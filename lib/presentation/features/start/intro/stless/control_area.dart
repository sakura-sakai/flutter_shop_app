import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shop_app/core/utils/utils.dart';
import 'package:shop_app/presentation/widgets/widgets.dart';

import '../intro_view_model.dart';
import 'page_indicator.dart';

class ControlArea extends HookWidget {
  const ControlArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final readVM = context.read(introVMProvider);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.min,
      children: [
        IgnorePointer(
          ignoring: _isLastPage(readVM),
          child: Opacity(
            opacity: _isLastPage(readVM) ? 0 : 1,
            child: TextButton(
              onPressed: readVM.goToLoginPage,
              child: const TextView(
                'Skip',
                fontFamily: FontFamily.gotik,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        HookConsumer(
          builder: (context, ref, child) {
            return PageIndicator(
              currentPage: ref.watch(
                introVMProvider.select((ctrl) => ctrl.currentPage),
              ),
              indicatorLength: readVM.pageSliders.length,
            );
          },
        ),
        TextButton(
          onPressed: () {
            if (_isLastPage(readVM)) {
              readVM.goToLoginPage();
              return;
            }

            readVM.nextPage();
          },
          child: _isLastPage(readVM)
              ? const TextView(
                  'Done',
                  fontFamily: FontFamily.gotik,
                  fontWeight: FontWeight.bold,
                )
              : const Icon(Icons.navigate_next),
        ),
      ],
    );
  }

  bool _isLastPage(IntroViewModel viewVM) {
    return viewVM.currentPage.round() == viewVM.pageSliders.length - 1;
  }
}
