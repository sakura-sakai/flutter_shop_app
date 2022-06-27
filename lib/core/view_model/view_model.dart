import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shop_app/presentation/route/router.dart';
import 'package:shop_app/presentation/widgets/widgets.dart';

import '../services/exceptions/exceptions.dart';

abstract class ViewModel extends ChangeNotifier {
  ViewModel(Reader read) : _read = read;

  final Reader _read;

  LoadingProvider get loading => _read(loadingProvider);

  StackRouter get router => _read(routerProvider);

  BuildContext get context => _read(contextProvider);

  ExceptionHandler get exception => _read(exceptionHandlerProvider);

  bool isDisposed = false;

  /// This is a method of [ChangeNotifier] class
  ///
  /// Discards any resources used by the object. After this is called, the
  /// object is not in a usable state and should be discarded (calls to
  /// [addListener] and [removeListener] will throw after the object is
  /// disposed).
  ///
  /// This method should only be called by the object's owner.
  @override
  void dispose() {
    isDisposed = true;
    super.dispose();
  }

  /// [updateState] the same as [notifyListeners] of [ChangeNotifier].
  ///
  /// But it won't call [notifyListeners] if [isDisposed] = true.
  /// So please call [updateState] instead of [notifyListeners].
  @override
  void notifyListeners() {
    if (!isDisposed) return super.notifyListeners();

    if (kDebugMode) {
      exception.handler(
        'UpdateState() is called after the $runtimeType has been disposed',
      );
    }
  }
}
