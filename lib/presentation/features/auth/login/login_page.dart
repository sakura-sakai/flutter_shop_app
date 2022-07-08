import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shop_app/core/const/constants.dart';
import 'package:shop_app/core/utils/utils.dart';
import 'package:shop_app/presentation/l10n/l10n.dart';
import 'package:shop_app/presentation/theme/theme.dart';

import '../../../route/router.dart';
import '../../../widgets/widgets.dart';
import '../auth_view_model.dart';
import '../stless/auth_background.dart';
import '../stless/auth_error_message.dart';
import '../stless/auth_have_account_check.dart';
import '../stless/auth_header.dart';
import '../stless/auth_input_field.dart';
import '../stless/auth_password_input.dart';

class LoginPage extends HookWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthBackgroundPage(
      child: ScrollWithFixedBottom(
        scrollChild: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            AuthHeader(content: L10n.current.pleaseLogin),
            const _FormInput(),
            const _SocialAuthArea(),
          ],
        ),
        fixedBottom: LoadingButton(
          L10n.current.login,
          buttonSize: ButtonSize.infinityWith,
          onPressed: () async {
            await context.read(authVMProvider).login();
          },
        ),
      ),
    );
  }
}

class _FormInput extends HookWidget {
  const _FormInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read(authVMProvider).formLoginKey,
      child: Column(
        children: [
          const Hero(
            tag: 'add_form',
            child: SizedBox(height: kDefaultWidePadding),
          ),
          HookConsumer(
            builder: (_, ref, child) {
              final errorMessage = ref.watch(
                authVMProvider.select((vm) => vm.errorMessage),
              );

              if (errorMessage.isEmpty) return const SizedBox.shrink();

              return AuthErrorMessage(errorMessage);
            },
          ),
          AuthInputField(
            icon: Icons.email,
            label: L10n.current.email,
            onSaved: (value) {},
          ),
          const SizedBox(height: kDefaultPadding),
          AuthPasswordInput(
            onSaved: (value) {},
          ),
          const SizedBox(height: kDefaultExThinPadding),
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () {},
              child: TextView(
                L10n.current.forgotPassword + '?',
                fontColor: FontColor.white,
              ),
            ),
          ),
          const SizedBox(height: kDefaultThinPadding),
          AuthHaveAccountCheck(
            text: L10n.current.notHaveAcc,
            highLightText: L10n.current.signUp,
            onTapHighLight: () => AppRouter().replace(const SignUpRoute()),
          ),
          const SizedBox(height: kDefaultWidePadding),
        ],
      ),
    );
  }
}

class _SocialAuthArea extends StatelessWidget {
  const _SocialAuthArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextView(
          L10n.current.loginWith,
          fontColor: FontColor.white,
        ),
        const SizedBox(height: kDefaultWidePadding),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _SocialIcon(Assets.icons.facebook.path),
            const SizedBox(width: kDefaultThinPadding),
            _SocialIcon(Assets.icons.twitter.path),
            const SizedBox(width: kDefaultThinPadding),
            _SocialIcon(Assets.icons.google.path),
          ],
        ),
        const SizedBox(height: kDefaultPadding),
      ],
    );
  }
}

class _SocialIcon extends HookWidget {
  const _SocialIcon(
    this.imgPath, {
    Key? key,
    this.onTap,
  }) : super(key: key);

  final String imgPath;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: min(64, 50.w / 3),
        height: min(64, 50.w / 3),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.black),
          borderRadius:
              BorderRadius.circular(kDefaultPadding + min(64, 50.w / 3) / 2),
        ),
        padding: const EdgeInsets.all(kDefaultPadding),
        child: Image.asset(imgPath),
      ),
    );
  }
}
