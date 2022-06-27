import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shop_app/presentation/route/router.dart';

import '../../../../core/utils/utils.dart';
import '../../../../core/view_model/view_model.dart';
import '../../../../domain/usecases/use_case.dart';

final splashVMProvider = ChangeNotifierProvider.autoDispose<SplashController>(
  (ref) => SplashController(ref.read),
);

class SplashController extends ViewModel {
  SplashController(Reader read)
      : _read = read,
        super(read);

  final Reader _read;

  SplashUseCase get _splashUC => _read(splashUCProvider);

  static Semaphore authApiSem = Semaphore(timeUp: 60);

  void onInit() {
    _init();
  }

  Future<void> _init() async {
    if (authApiSem.acquire() == false) {
      return;
    }

    try {
      final status = await _splashUC.applicationInitialize();

      switch (status) {
        case AppInitStatus.firstRun:
          router.replace(const IntroRoute());
          break;

        case AppInitStatus.authenticated:
        case AppInitStatus.connectionError:
          router.replace(const RootBottomNavigateRoute());
          break;

        case AppInitStatus.forcedUpdate:
          exception.forcedUpdateHandler();
          break;

        case AppInitStatus.unauthorizedError:
        default:
          // router.replace(const LoginRoute());
          break;
      }
    } catch (e) {
      // router.replace(const LoginRoute());
      exception.handler(e);
    } finally {
      authApiSem.release();
    }
  }
}
