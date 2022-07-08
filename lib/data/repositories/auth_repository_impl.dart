import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/services/exceptions/exceptions.dart';
import '../../domain/entities/auth_Signup_request.dart';
import '../../domain/entities/authentication_user.dart';
import '../../domain/entities/auth_login_request.dart';
import '../../domain/entities/refresh_token.dart';
import '../../domain/repositories/auth/auth_repository.dart';
import '../sources/api/auth_api.dart';

final authRepoProvider = Provider<AuthRepository>(
  (_) => AuthRepositoryImpl(),
);

class AuthRepositoryImpl implements AuthRepository {
  final AuthApi _authApi = AuthApi();

  @override
  Future<AuthenticationUser> signUp({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final authRequest = AuthSignupRequest(name, email, password);

      final authCreated = await _authApi.signUp(authRequest);

      return AuthenticationUser(
        id: authCreated.id,
        email: authCreated.email,
        displayName: authCreated.displayName,
        avatarImageUrl: authCreated.avatarImageUrl,
        avatarImageThumbUrl: authCreated.avatarImageThumbUrl,
        token: authCreated.token,
        refreshToken: authCreated.refreshToken,
      );
    } catch (e) {
      throw AppException.handler(e);
    }
  }

  @override
  Future<AuthenticationUser> login({
    required String email,
    required String password,
  }) async {
    try {
      final authRequest = AuthLoginRequest(email, password);

      final authCreated = await _authApi.login(authRequest);

      return AuthenticationUser(
        id: authCreated.id,
        email: authCreated.email,
        displayName: authCreated.displayName,
        avatarImageUrl: authCreated.avatarImageUrl,
        avatarImageThumbUrl: authCreated.avatarImageThumbUrl,
        token: authCreated.token,
        refreshToken: authCreated.refreshToken,
      );
    } catch (e) {
      throw AppException.handler(e);
    }
  }

  @override
  Future<void> logout() async => await _authApi.logout();

  @override
  Future<AuthenticationUser> refreshToken(RefreshToken refreshToken) async {
    try {
      final authRefreshed = await _authApi.refreshToken(refreshToken);

      return AuthenticationUser(
        id: authRefreshed.id,
        email: authRefreshed.email,
        displayName: authRefreshed.displayName,
        avatarImageUrl: authRefreshed.avatarImageUrl,
        avatarImageThumbUrl: authRefreshed.avatarImageThumbUrl,
        token: authRefreshed.token,
        refreshToken: authRefreshed.refreshToken,
      );
    } catch (e) {
      throw AppException.handler(e);
    }
  }
}
