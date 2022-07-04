import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shop_app/core/view_model/view_model.dart';

final choseLoginOrSignUpVMProvider =
    ChangeNotifierProvider.autoDispose<ChoseLoginOrSignUpViewModel>((ref) {
  return ChoseLoginOrSignUpViewModel(ref.read);
});

class ChoseLoginOrSignUpViewModel extends ViewModel {
  ChoseLoginOrSignUpViewModel(Reader read) : super(read);

  bool isPlayAnimationNextPage = false;

  final animationController = useAnimationController(
    duration: const Duration(milliseconds: 300),
  );

  void init() {
    useEffect(() {
      animationController.addStatusListener((status) {
        if (status == AnimationStatus.dismissed) {
          // setState(() {
          //   tapLogin = 0;
          //   tapSignup = 0;
          // });
        }
      });
      return;
    }, []);
  }

  Future<void> playAnimation() async {
    try {
      isPlayAnimationNextPage = true;
      notifyListeners();

      await animationController.forward();
      await animationController.reverse();
    } catch (e) {
      exception.handler(e);
    }
  }
}
