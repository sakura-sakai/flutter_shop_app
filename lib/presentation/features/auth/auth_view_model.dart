import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/services/exceptions/exceptions.dart';
import '../../../core/view_model/view_model_base.dart';
import '../../../domain/usecases/use_case.dart';
import '../../l10n/l10n.dart';
import '../../route/router.dart';

final authVMProvider = ChangeNotifierProvider.autoDispose(
  (ref) => AuthViewModel(ref.read),
);

enum _AuthErrorStatus {
  failed, // Login failure
  connectionError, // off-line
}

class AuthViewModel extends ViewModelBase {
  AuthViewModel(Reader read)
      : _read = read,
        super(read);

  final Reader _read;

  final formLoginKey = GlobalKey<FormState>();
  final formSignupKey = GlobalKey<FormState>();

  AuthUseCase get _authUC => _read(authUCProvider);

  String name = "";
  String email = "";
  String password = "";

  String errorMessage = "";

  Future<void> signUp() async {
    try {
      if (!(formSignupKey.currentState?.validate() ?? false)) return;

      if (!await isOnline()) {
        errorMessage = _getErrorMessageLogin(_AuthErrorStatus.connectionError);
        notifyListeners();
        return;
      }

      formSignupKey.currentState?.save();

      // await _authUC.signUp(name: name, email: email, password: password);

      await Future.delayed(const Duration(seconds: 3));

      router.replaceAll(const [RootBottomNavigateRoute()]);
    } catch (e) {
      errorMessage = _getErrorMessageLogin(_AuthErrorStatus.failed);
      notifyListeners();

      // If it is a response of forced version upgrade
      if (e is AppException && e.code == ExceptionType.forcedUpdate) {
        exception.handler(e);
      }
    }
  }

  Future<void> login() async {
    try {
      if (!(formLoginKey.currentState?.validate() ?? false)) return;

      if (!await isOnline()) {
        errorMessage = _getErrorMessageLogin(_AuthErrorStatus.connectionError);
        notifyListeners();
        return;
      }

      formLoginKey.currentState?.save();

      // await _authUC.login(email: email, password: password);

      await Future.delayed(const Duration(seconds: 3));

      router.replaceAll(const [RootBottomNavigateRoute()]);
    } catch (e) {
      errorMessage = _getErrorMessageLogin(_AuthErrorStatus.failed);
      notifyListeners();

      // If it is a response of forced version upgrade
      if (e is AppException && e.code == ExceptionType.forcedUpdate) {
        exception.handler(e);
      }
    }
  }

  Future<void> forgotPassword() async {
    try {
      // Todo: handle forgot password
    } catch (e) {
      exception.handler(e);
    }
  }

  ///
  /// Select an error message
  ///
  String _getErrorMessageLogin(_AuthErrorStatus errorStatus) {
    switch (errorStatus) {
      case _AuthErrorStatus.connectionError:
        return L10n.current.noInternet;

      case _AuthErrorStatus.failed:
        return L10n.current.loginInformationError;

      default:
        return "";
    }
  }
}
