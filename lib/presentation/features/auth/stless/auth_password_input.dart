import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../core/const/constants.dart';
import '../../../l10n/l10n.dart';
import '../../../theme/theme.dart';
import '../../../widgets/widgets.dart';

class AuthPasswordInput extends HookWidget {
  const AuthPasswordInput({
    Key? key,
    this.onSaved,
  }) : super(key: key);

  final FormFieldSetter<String>? onSaved;

  @override
  Widget build(BuildContext context) {
    return ObscureTextArea(
      isRequired: true,
      filled: true,
      fillColor: AppColors.white,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      prefixIcon: const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: kDefaultExThinPadding,
        ),
        child: Icon(
          Icons.vpn_key,
          size: kWideIconSize,
        ),
      ),
      labelText: L10n.current.password,
      onSaved: onSaved,
    );
  }
}
