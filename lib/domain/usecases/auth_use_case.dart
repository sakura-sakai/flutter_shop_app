part of use_case;

final authUCProvider = Provider<AuthUseCase>(
  (ref) => AuthUseCase(ref.read),
);

class AuthUseCase extends UseCase {
  AuthUseCase(Reader read) : super(read);

  ///
  /// Login
  ///
  Future<void> login({
    required String email,
    required String password,
  }) async {
    try {
      await authSecureRepo.deleteSecurityToken();

      final authenticationUser = await authRepo.login(
        email: email,
        password: password,
      );

      _saveToken(authenticationUser);
    } catch (e) {
      throw AppException.handler(e);
    }
  }

  ///
  /// Logout
  ///
  Future<void> logout() async {
    try {
      await authRepo.logout();
    } catch (e) {
      throw AppException.handler(e);
    } finally {
      authSecureRepo.deleteSecurityToken();
    }
  }

  ///
  /// Refresh token
  ///
  Future<void> refresh() async => await _refreshToken();
}
