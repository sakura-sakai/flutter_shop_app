import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shop_app/core/utils/utils.dart';

import '../../../../core/const/constants.dart';
import '../../../theme/theme.dart';

class SocialAuthIcon extends HookWidget {
  const SocialAuthIcon(
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
