import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../theme/theme.dart';
import '../../../widgets/widgets.dart';

class AuthHaveAccountCheck extends HookWidget {
  const AuthHaveAccountCheck({
    Key? key,
    required this.text,
    required this.highLightText,
    this.onTapHighLight,
  }) : super(key: key);

  final String text;
  final String highLightText;
  final VoidCallback? onTapHighLight;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextView(
          text + " ",
          fontColor: FontColor.white,
        ),
        GestureDetector(
          onTap: onTapHighLight,
          child: TextView(
            highLightText,
            fontColor: AppColors.violet[700],
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
