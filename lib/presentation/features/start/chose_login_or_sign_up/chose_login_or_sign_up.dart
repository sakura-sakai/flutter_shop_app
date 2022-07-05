import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shop_app/core/utils/utils.dart';
import 'package:shop_app/presentation/widgets/widgets.dart';

import '../../../l10n/l10n.dart';
import '../../../theme/theme.dart';
import 'chose_login_or_sign_up_view_model.dart';

class ChoseLoginOrSignUpPage extends HookWidget {
  const ChoseLoginOrSignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final readVM = context.read(choseLoginOrSignUpVMProvider);

    // readVM.onInit();

    return _BackgroundPage(
      children: [
        Hero(
          tag: "shop",
          child: TextView(
            L10n.current.title,
            fontColor: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 35.0,
          ),
        ),
        TextView(
          L10n.current.hintChoseLogin,
          fontColor: Colors.white,
          fontWeight: FontWeight.w200,
        ),
        HookConsumer(
          builder: (context, ref, child) {
            final isPlayAnimationNextPage = ref.watch(
              choseLoginOrSignUpVMProvider.select(
                (vm) => vm.isPlayAnimationNextPage,
              ),
            );

            return !isPlayAnimationNextPage
                ? SizedBox(
                    width: 70.w,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Button(
                          L10n.current.login.toUpperCase(),
                          buttonSize: ButtonSize.infinityWith,
                          onPressed: readVM.playAnimation,
                        ),
                        SizedBox(height: 2.h),
                        Button(
                          L10n.current.signUp.toUpperCase(),
                          buttonType: ButtonType.primaryLight,
                          buttonSize: ButtonSize.infinityWith,
                          onPressed: readVM.playAnimation,
                        ),
                      ],
                    ),
                  )
                : AnimationNextPage(controller: readVM.animationController);
          },
        ),
      ],
    );
  }
}

class _BackgroundPage extends HookWidget {
  const _BackgroundPage({
    Key? key,
    required this.children,
  }) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Stack(
        children: [
          // Container(
          //   color: Colors.white,
          //   child: new Carousel(
          //     boxFit: BoxFit.cover,
          //     autoplay: true,
          //     animationDuration: Duration(milliseconds: 300),
          //     dotSize: 0.0,
          //     dotSpacing: 16.0,
          //     dotBgColor: Colors.transparent,
          //     showIndicator: false,
          //     overlayShadow: false,
          //     images: [
          //       AssetImage('assets/img/girl.png'),
          //       AssetImage("assets/img/SliderLogin2.png"),
          //       AssetImage('assets/img/SliderLogin3.png'),
          //       AssetImage("assets/img/SliderLogin4.png"),
          //     ],
          //   ),
          // ),
          Container(
            width: 100.w,
            height: 100.h,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(0, 0, 0, 0.3),
                  Color.fromRGBO(0, 0, 0, 0.4)
                ],
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
              ),
            ),
            child: SafeArea(
              child: Column(
                children: children,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class AnimationNextPage extends HookWidget {
  AnimationNextPage({
    Key? key,
    required this.controller,
  })  : _animation = Tween(
          end: 900.0,
          begin: 70.0,
        ).animate(
          CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn),
        ),
        super(key: key);

  final AnimationController controller;
  final Animation _animation;

  @override
  Widget build(BuildContext context) {
    controller.addListener(() {
      if (_animation.isCompleted) {
        print('------------------> Push Login Page');
      }
    });

    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 60.0),
          child: Container(
            height: _animation.value,
            width: _animation.value,
            decoration: BoxDecoration(
              color: Colors.white,
              shape:
                  _animation.value < 600 ? BoxShape.circle : BoxShape.rectangle,
            ),
          ),
        );
      },
    );
  }
}
