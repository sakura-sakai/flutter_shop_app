import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../core/const/constants.dart';
import '../../../theme/theme.dart';
import '../../../widgets/widgets.dart';

class AuthErrorMessage extends HookWidget {
  const AuthErrorMessage(this.message, {Key? key}) : super(key: key);

  final String message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultExThinPadding),
      child: Row(
        children: [
          const Icon(
            Icons.error,
            color: AppColors.red,
            size: 16,
          ),
          const SizedBox(width: kDefaultExThinPadding),
          Expanded(
            child: TextView(
              message,
              fontColor: AppColors.red,
              fontDarkColor: AppColors.red,
              fontSize: FontSize.small,
              overflow: TextOverflow.visible,
            ),
          ),
        ],
      ),
    );
  }
}
