import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/services/exceptions/exceptions.dart';
import '../../domain/entities/refresh_token.dart';
import '../../domain/entities/token.dart';
import '../../domain/repositories/auth/auth_secure_repository.dart';
import '../sources/local/auth_secure_local.dart';

final authSecureRepoProvider = Provider<AuthSecureRepository>(
  (_) => AuthSecureRepositoryImpl(),
);

class AuthSecureRepositoryImpl implements AuthSecureRepository {
  final AuthSecureLocal _authSecureLocal = AuthSecureLocal();

  ///
  /// Set all security token
  ///
  @override
  Future<void> setSecurityToken({
    required Token token,
    required RefreshToken refreshToken,
  }) async {
    try {
      await _authSecureLocal.setToken(token);
      await _authSecureLocal.setRefreshToken(refreshToken);
    } catch (e) {
      throw AppException.handler(e);
    }
  }

  ///
  /// Get Token
  ///
  @override
  Future<Token> getToken() async {
    try {
      return await _authSecureLocal.getToken();
    } catch (e) {
      throw AppException.handler(e);
    }
  }

  ///
  /// Get Refresh Token
  ///
  @override
  Future<RefreshToken> getRefreshToken() async {
    try {
      return await _authSecureLocal.getRefreshToken();
    } catch (e) {
      throw AppException.handler(e);
    }
  }

  ///
  /// Delete all security token
  ///
  @override
  Future<void> deleteSecurityToken() async {
    try {
      await _authSecureLocal.deleteToken();
      await _authSecureLocal.deleteRefreshToken();
    } catch (e) {
      throw AppException.handler(e);
    }
  }

  ///
  /// Contains security token
  ///
  @override
  Future<bool> hasToken() async {
    try {
      final token = await _authSecureLocal.containsToken();
      final refreshToken = await _authSecureLocal.containsRefreshToken();

      return token && refreshToken;
    } catch (e) {
      throw AppException.handler(e);
    }
  }
}
