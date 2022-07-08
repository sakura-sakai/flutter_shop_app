import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shop_app/core/const/constants.dart';
import 'package:shop_app/core/utils/utils.dart';
import 'package:shop_app/presentation/l10n/l10n.dart';
import 'package:shop_app/presentation/theme/theme.dart';

import '../../../widgets/widgets.dart';
import '../stless/background_auth_page.dart';
import '../stless/social_auth_icon.dart';

class LoginPage extends HookWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackgroundAuthPage(
      imgBackground: Assets.images.loginScreenBackground.path,
      child: ScrollWithFixedBottom(
        scrollChild: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                SizedBox(height: 2.h),
                Assets.images.logo.image(height: 70.0),
                const SizedBox(height: kDefaultWidePadding),
                Hero(
                  tag: "shop",
                  child: TextView(
                    L10n.current.title,
                    fontWeight: FontWeight.bold,
                    fontColor: FontColor.white,
                    fontSize: 25.0,
                  ),
                ),
                const SizedBox(height: kDefaultExThinPadding),
                TextView(
                  L10n.current.pleaseLogin,
                  fontColor: FontColor.white,
                ),
                const SizedBox(height: kDefaultWidePadding),
              ],
            ),
            Column(
              children: [
                TextArea(
                  isRequired: true,
                  prefixIcon: const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: kDefaultExThinPadding),
                    child: Icon(
                      Icons.email,
                      size: kWideIconSize,
                    ),
                  ),
                  labelText: L10n.current.email,
                ),
                const SizedBox(height: kDefaultPadding),
                ObscureTextArea(
                  isRequired: true,
                  prefixIcon: const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: kDefaultExThinPadding),
                    child: Icon(
                      Icons.vpn_key,
                      size: kWideIconSize,
                    ),
                  ),
                  labelText: L10n.current.password,
                ),
                const SizedBox(height: kDefaultExThinPadding),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextView(
                    L10n.current.forgotPassword + '?',
                    fontColor: FontColor.white,
                  ),
                ),
                const SizedBox(height: kDefaultThinPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextView(
                      L10n.current.notHaveAcc + " ",
                      fontColor: FontColor.white,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: TextView(
                        L10n.current.signUp,
                        fontColor: AppColors.violet[700],
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: kDefaultWidePadding),
              ],
            ),
            Column(
              children: [
                TextView(
                  L10n.current.loginWith,
                  fontColor: FontColor.white,
                ),
                const SizedBox(height: kDefaultWidePadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialAuthIcon(Assets.icons.facebook.path),
                    const SizedBox(width: kDefaultThinPadding),
                    SocialAuthIcon(Assets.icons.twitter.path),
                    const SizedBox(width: kDefaultThinPadding),
                    SocialAuthIcon(Assets.icons.google.path),
                  ],
                ),
                const SizedBox(height: kDefaultPadding),
              ],
            ),
          ],
        ),
        fixedBottom: Button(
          L10n.current.login,
          buttonSize: ButtonSize.infinityWith,
          onPressed: () {},
        ),
      ),
    );
  }
}
