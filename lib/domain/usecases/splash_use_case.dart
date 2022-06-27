part of use_case;

/// `is_first_run` of shared storage keyword
const String _isFirstRun = 'is_first_run';

final splashUCProvider = Provider<SplashUseCase>(
  (ref) => SplashUseCase(ref.read),
);

enum AppInitStatus {
  firstRun,
  authenticated,
  connectionError,
  unauthorizedError,
  forcedUpdate,
}

class SplashUseCase extends UseCase {
  SplashUseCase(Reader read) : super(read);

  SharedStorageHelper get shareSt => _read(sharedStorageHelperProvider);

  Future<AppInitStatus> applicationInitialize() async {
    try {
      await Future.delayed(const Duration(seconds: 3));
      final isFirstRun = shareSt.read<bool>(_isFirstRun);

      if (isFirstRun == null || !isFirstRun) {
        return AppInitStatus.firstRun;
      }

      final hasToken = await authSecureRepo.hasToken();
      if (!hasToken) {
        // router.replace(const LoginRoute());
        return AppInitStatus.unauthorizedError;
      }

      await _refreshToken();

      return AppInitStatus.authenticated;
    } catch (e) {
      return _exceptionHandler(e);
    }
  }

  AppInitStatus _exceptionHandler(dynamic e) {
    // ApiException
    if (e is ApiException) {
      if (e.code == HttpStatus.upgradeRequired) {
        return AppInitStatus.forcedUpdate;
      }

      return AppInitStatus.unauthorizedError;
    }

    // SocketException
    if (e is SocketException) {
      return AppInitStatus.connectionError;
    }

    // others
    return AppInitStatus.unauthorizedError;
  }
}
