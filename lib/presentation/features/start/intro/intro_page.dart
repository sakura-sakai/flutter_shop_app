import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shop_app/core/utils/utils.dart';
import 'package:shop_app/presentation/theme/theme.dart';

import 'intro_view_model.dart';
import 'stless/control_area.dart';

class IntroPage extends HookWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final readVM = context.read(introVMProvider);

    return Scaffold(
      backgroundColor: AppColors.white,
      body: Stack(
        children: <Widget>[
          NotificationListener<ScrollNotification>(
            onNotification: readVM.onNotifyScroll,
            child: PageView(
              children: readVM.pageSliders,
              controller: readVM.pageController,
              physics: const BouncingScrollPhysics(),
            ),
          ),
          const Positioned(
            left: 0.0,
            right: 0.0,
            bottom: 10,
            child: ControlArea(),
          ),
        ],
      ),
    );
  }
}
