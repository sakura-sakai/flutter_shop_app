import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shop_app/core/const/constants.dart';
import 'package:shop_app/core/utils/utils.dart';
import 'package:shop_app/presentation/l10n/l10n.dart';

import '../../../route/router.dart';
import '../../../widgets/widgets.dart';
import '../auth_view_model.dart';
import '../stless/auth_background.dart';
import '../stless/auth_error_message.dart';
import '../stless/auth_have_account_check.dart';
import '../stless/auth_header.dart';
import '../stless/auth_input_field.dart';
import '../stless/auth_password_input.dart';

class SignUpPage extends HookWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthBackgroundPage(
      child: ScrollWithFixedBottom(
        scrollChild: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            AuthHeader(content: L10n.current.pleaseCreateAcc),
            const _FormInput(),
            const SizedBox.shrink(),
          ],
        ),
        fixedBottom: LoadingButton(
          L10n.current.signUp,
          buttonSize: ButtonSize.infinityWith,
          onPressed: () async {
            await context.read(authVMProvider).signUp();
          },
        ),
      ),
    );
  }
}

class _FormInput extends HookWidget {
  const _FormInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read(authVMProvider).formSignupKey,
      child: Column(
        children: [
          Hero(
            tag: 'add_form',
            child: Material(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(15),
              child: AuthInputField(
                icon: Icons.account_circle,
                label: L10n.current.fullName,
                onSaved: (value) {},
              ),
            ),
          ),
          const SizedBox(height: kDefaultPadding),
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
          const SizedBox(height: kDefaultPadding),
          AuthHaveAccountCheck(
            text: L10n.current.haveAcc,
            highLightText: L10n.current.login,
            onTapHighLight: () => AppRouter().replace(const LoginRoute()),
          ),
          const SizedBox(height: kDefaultWidePadding),
        ],
      ),
    );
  }
}
