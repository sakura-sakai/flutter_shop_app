import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shop_app/presentation/widgets/widgets.dart';

import '../intro_view_model.dart';
import 'page_indicator.dart';

class ControlArea extends HookConsumerWidget {
  const ControlArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final readVM = ref.read(introVMProvider);
    final currentPage = ref.watch(
      introVMProvider.select((ctrl) => ctrl.currentPage),
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.min,
      children: [
        IgnorePointer(
          ignoring: _isLastPage(readVM),
          child: Opacity(
            opacity: _isLastPage(readVM) ? 0 : 1,
            child: TextButton(
              onPressed: () => ref.read(introVMProvider).goToLoginPage(),
              child: const TextView(
                'Skip',
                fontFamily: FontFamily.gotik,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        PageIndicator(
          currentPage: currentPage,
          indicatorLength: readVM.pageSliders.length,
        ),
        TextButton(
          onPressed: () {
            if (_isLastPage(readVM)) {
              ref.read(introVMProvider).goToLoginPage();
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
