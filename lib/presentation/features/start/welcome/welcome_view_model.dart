import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shop_app/core/view_model/view_model_base.dart';
import 'package:shop_app/presentation/route/router.dart';

final welcomeVMProvider = ChangeNotifierProvider.autoDispose((ref) {
  return WelcomeViewModel(ref.read);
});

class WelcomeViewModel extends ViewModelBase {
  WelcomeViewModel(Reader read) : super(read);

  bool isPlayAnimation = false;

  late final AnimationController animationCtrl;

  @override
  void onInit() {
    animationCtrl = useAnimationController(
      duration: const Duration(milliseconds: 300),
    );

    super.onInit();
  }

  void skipLogin() {}

  Future<void> goToLoginPage() async {
    await _playAnimation();
    router.replace(const LoginRoute());
  }

  Future<void> goToSignup() async {
    await _playAnimation();
    router.replace(const SignUpRoute());
  }

  Future<void> _playAnimation() async {
    try {
      isPlayAnimation = true;
      notifyListeners();

      await animationCtrl.forward();
    } catch (e) {
      exception.handler(e);
    } finally {
      isPlayAnimation = false;
    }
  }
}
