import '../../entities/authentication_user.dart';
import '../../entities/refresh_token.dart';

abstract class AuthRepository {
  Future<AuthenticationUser> login({
    required String email,
    required String password,
  });

  Future<void> logout();

  Future<AuthenticationUser> refreshToken(RefreshToken refreshToken);
}
