import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shop_app/presentation/widgets/widgets.dart';

import '../intro_view_model.dart';
import 'indicator_page.dart';

class ControlArea extends HookWidget {
  const ControlArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.min,
      children: const [
        _LeftControl(),
        _MiddleControl(),
        _RightControl(),
      ],
    );
  }
}

class _LeftControl extends HookConsumerWidget {
  const _LeftControl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLastPage = ref.watch(
      introVMProvider.select((vm) => vm.isLastPage),
    );

    return IgnorePointer(
      ignoring: isLastPage,
      child: Opacity(
        opacity: isLastPage ? 0 : 1,
        child: TextButton(
          onPressed: ref.read(introVMProvider).goToLoginPage,
          child: const TextView(
            'Skip',
            fontFamily: FontFamily.gotik,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class _MiddleControl extends HookConsumerWidget {
  const _MiddleControl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IndicatorPage(
      currentPage: ref.watch(
        introVMProvider.select((ctrl) => ctrl.currentPage),
      ),
      indicatorLength: ref.read(introVMProvider).pageSliders.length,
    );
  }
}

class _RightControl extends HookConsumerWidget {
  const _RightControl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLastPage = ref.watch(
      introVMProvider.select((vm) => vm.isLastPage),
    );

    return TextButton(
      onPressed: () {
        if (isLastPage) {
          ref.read(introVMProvider).goToLoginPage();
          return;
        }

        ref.read(introVMProvider).nextSliderPage();
      },
      child: isLastPage
          ? const TextView(
              'Done',
              fontFamily: FontFamily.gotik,
              fontWeight: FontWeight.bold,
            )
          : const Icon(Icons.navigate_next),
    );
  }
}
