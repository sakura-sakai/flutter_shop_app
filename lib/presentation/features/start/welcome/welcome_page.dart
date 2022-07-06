import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shop_app/core/utils/utils.dart';

import '../../../../core/const/constants.dart';
import '../../../l10n/l10n.dart';
import '../../../theme/theme.dart';
import '../../../widgets/widgets.dart';
import 'welcome_view_model.dart';

class WelcomePage extends HookWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final animationCtrl = context.read(welcomeVMProvider).animationCtrl;

    return _StackBackgroundPage(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 5.h),
            Hero(
              tag: "shop",
              child: TextView(
                L10n.current.title,
                fontColor: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 35.0,
              ),
            ),
            SizedBox(height: 65.h),
          ],
        ),
        HookConsumer(
          builder: (context, ref, child) {
            final isPlayAnimation = ref.watch(
              welcomeVMProvider.select((vm) => vm.isPlayAnimation),
            );

            return !isPlayAnimation
                ? const _MainBodyPage()
                : AnimationNextPage(controller: animationCtrl);
          },
        ),
      ],
    );
  }
}

class _MainBodyPage extends HookWidget {
  const _MainBodyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          color: Colors.white,
          height: 0.5,
          width: 80.0,
        ),
        const SizedBox(height: 4),
        TextView(
          L10n.current.hintChoseLogin,
          fontColor: Colors.white,
          fontWeight: FontWeight.w200,
        ),
        const SizedBox(height: 16),
        SizedBox(
          width: 70.w,
          child: Button(
            L10n.current.login.toUpperCase(),
            buttonSize: ButtonSize.infinityWith,
            onPressed:
            context.read(welcomeVMProvider).goToLoginPage,
          ),
        ),
        const SizedBox(height: 8),
        const _OrSkip(),
        const SizedBox(height: 8),
        SizedBox(
          width: 70.w,
          child: Button(
            L10n.current.signUp.toUpperCase(),
            buttonType: ButtonType.primaryLight,
            buttonSize: ButtonSize.infinityWith,
            onPressed: context.read(welcomeVMProvider).goToSignup,
          ),
        ),
      ],
    );
  }
}

class _OrSkip extends HookWidget {
  const _OrSkip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          color: Colors.white,
          height: 0.2,
          width: 40.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kDefaultExThinPadding,
          ),
          child: TextView(
            L10n.current.orSkip.toUpperCase(),
            fontColor: Colors.white,
          ),
        ),
        Container(
          color: Colors.white,
          height: 0.2,
          width: 40.0,
        ),
      ],
    );
  }
}

class _StackBackgroundPage extends HookWidget {
  _StackBackgroundPage({
    Key? key,
    required this.children,
  }) : super(key: key);

  final List<Widget> children;

  final List<String> itemSlidePaths = [
    Assets.images.sliderLogin1.path,
    Assets.images.sliderLogin2.path,
    Assets.images.sliderLogin3.path,
    Assets.images.sliderLogin4.path,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Stack(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 100.h,
              viewportFraction: 1.0,
              enlargeCenterPage: false,
              autoPlay: true,
            ),
            items: itemSlidePaths.map((path) {
              return Image.asset(
                path,
                fit: BoxFit.cover,
                width: 100.w,
                height: 100.h,
              );
            }).toList(),
          ),
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
            child: ListView(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.zero,
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: children,
                ),
              ],
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
          begin: 100.0,
          end: 900.0,
        ).animate(
          CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn),
        ),
        super(key: key);

  final AnimationController controller;
  final Animation _animation;

  @override
  Widget build(BuildContext context) {
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
