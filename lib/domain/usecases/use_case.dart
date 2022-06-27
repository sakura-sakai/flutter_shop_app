library use_case;

import 'dart:io';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/services/api/api.dart';
import '../../core/services/exceptions/exceptions.dart';
import '../../core/services/shared_storage/shared_storage.dart';
import '../../core/utils/utils.dart';
import '../../data/repositories/auth_repository_impl.dart';
import '../../data/repositories/auth_secure_repository_impl.dart';
import '../entities/authentication_user.dart';
import '../repositories/auth/auth_repository.dart';
import '../repositories/auth/auth_secure_repository.dart';

part 'auth_use_case.dart';

part 'splash_use_case.dart';

class UseCase {
  UseCase(Reader read) : _read = read;

  final Reader _read;

  AuthRepository get authRepo => _read(authRepoProvider);

  AuthSecureRepository get authSecureRepo => _read(authSecureRepoProvider);

  static final Semaphore _refreshApiSem = Semaphore();

  ///
  /// Refresh token
  ///
  Future<void> _refreshToken() async {
    try {
      if (!_refreshApiSem.acquire()) {
        /// To avoid duplication of refresh token processing
        /// when Api is executed consecutively,
        ///
        /// if Api is already being reacquired,
        /// wait until the reacquisition is complete.
        ///
        await _refreshApiSem.wait();
        return;
      }

      final refreshToken = await authSecureRepo.getRefreshToken();
      final authenticationUser = await authRepo.refreshToken(refreshToken);

      await _saveToken(authenticationUser);
    } catch (e) {
      throw AppException.handler(e);
    } finally {
      _refreshApiSem.release();
    }
  }

  ///
  /// Save Token
  ///
  Future<void> _saveToken(AuthenticationUser authenticationUser) async {
    await authSecureRepo.setSecurityToken(
      token: authenticationUser.token,
      refreshToken: authenticationUser.refreshToken,
    );
  }
}
