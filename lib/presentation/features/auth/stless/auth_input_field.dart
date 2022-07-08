import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../core/const/constants.dart';
import '../../../theme/theme.dart';
import '../../../widgets/widgets.dart';

class AuthInputField extends HookWidget {
  const AuthInputField({
    Key? key,
    required this.icon,
    required this.label,
    this.onChanged,
    this.onSaved,
  }) : super(key: key);

  final IconData icon;
  final String label;
  final ValueChanged<String>? onChanged;
  final FormFieldSetter<String>? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextArea(
      isRequired: true,
      filled: true,
      fillColor: AppColors.white,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      prefixIcon: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultExThinPadding),
        child: Icon(
          icon,
          size: kWideIconSize,
        ),
      ),
      labelText: label,
      onChanged: onChanged,
      onSaved: onSaved,
    );
  }
}
