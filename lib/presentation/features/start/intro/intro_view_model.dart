import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shop_app/presentation/widgets/widgets.dart';

import '../../../../core/view_model/view_model_base.dart';
import '../../../route/router.dart';
import 'stless/slider_page.dart';

final introVMProvider = ChangeNotifierProvider.autoDispose<IntroViewModel>(
  (ref) => IntroViewModel(ref.read),
);

class IntroViewModel extends ViewModelBase {
  IntroViewModel(Reader reader) : super(reader);

  double currentPage = 0.0;

  bool isLastPage = false;

  final pageController = usePageController();

  final List<Widget> pageSliders = [
    SliderPage(
      title: 'E-Commerce App',
      imgPath: Assets.images.ilustrasiOnBoarding1.path,
      content: 'E commerce application template '
          '\nbuy this code template in code canyon',
    ),
    SliderPage(
      title: 'Choose Item',
      imgPath: Assets.images.ilustrasiOnBoarding2.path,
      content: 'Choose Items wherever you are with this application '
          'to make life easier',
    ),
    SliderPage(
      title: 'Buy Item',
      imgPath: Assets.images.ilustrasiOnBoarding3.path,
      content: 'Shop from thousand brands in the world \n in one application '
          'at throwaway \nprices ',
    ),
  ];

  bool onNotifyScroll(ScrollNotification notification) {
    if (notification.metrics is! PageMetrics) return false;

    final PageMetrics metrics = notification.metrics as PageMetrics;
    currentPage = metrics.page!;

    isLastPage = currentPage.round() == pageSliders.length - 1;
    notifyListeners();
    return true;
  }

  void nextSliderPage() {
    pageController.nextPage(
      duration: const Duration(milliseconds: 500),
      curve: Curves.linear,
    );
  }

  void goToLoginPage() {
    router.replace(ChoseLoginOrSignUpRoute());
  }
}
