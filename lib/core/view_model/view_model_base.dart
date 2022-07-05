import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shop_app/presentation/route/router.dart';
import 'package:shop_app/presentation/widgets/widgets.dart';

import '../services/exceptions/exceptions.dart';

abstract class ViewModelBase extends ChangeNotifier {
  ViewModelBase(Reader read, {List<Object?>? keys}) {
    _read = read;
    useEffect(
      () {
        onInit();
        return;
      },
      keys ?? [],
    );
  }

  late final Reader _read;

  LoadingProvider get loading => _read(loadingProvider);

  StackRouter get router => _read(routerProvider);

  BuildContext get context => _read(contextProvider);

  ExceptionHandler get exception => _read(exceptionHandlerProvider);

  bool isDisposed = false;

  /// init ViewModel
  ///
  /// Called immediately after the ViewModel is created.
  /// You might use this to initialize something for the ViewModel.
  @protected
  @mustCallSuper
  void onInit() {
    SchedulerBinding.instance?.addPostFrameCallback((_) => onReady());
  }

  /// [onReady] onReady is triggered by [addPostFrameCallback]
  ///
  /// Called 1 frame after onInit(). It is the perfect place to enter
  /// navigation events, like snackBar, dialogs, or a new route, or
  /// async request.
  @protected
  @mustCallSuper
  void onReady() {}

  /// [dispose] override.
  @override
  void dispose() {
    isDisposed = true;
    super.dispose();
  }

  /// [notifyListeners] override.
  ///
  /// Make it won't call [notifyListeners] if [isDisposed] = true.
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
