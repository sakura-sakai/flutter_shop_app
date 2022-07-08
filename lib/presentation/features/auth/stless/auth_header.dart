import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shop_app/core/utils/utils.dart';

import '../../../../core/const/constants.dart';
import '../../../l10n/l10n.dart';
import '../../../theme/theme.dart';
import '../../../widgets/widgets.dart';

class AuthHeader extends HookWidget {
  const AuthHeader({
    Key? key,
    required this.content,
  }) : super(key: key);

  final String content;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 2.h),
        Hero(
          tag: 'logo_shop',
          child: Assets.images.logo.image(height: 70.0),
        ),
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
        Hero(
          tag: "please_login",
          child: TextView(
            content,
            fontColor: FontColor.white,
          ),
        ),
      ],
    );
  }
}
