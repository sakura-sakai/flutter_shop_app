library router;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../features/auth/login/login_page.dart';
import '../features/brand/brand_page.dart';
import '../features/cart/cart_page.dart';
import '../features/home/home_page.dart';
import '../features/profile/profile_page.dart';
import '../features/root_bottom_navigate/root_bottom_navigate_page.dart';
import '../features/start/intro/intro_page.dart';
import '../features/start/splash/splash_page.dart';
import '../features/start/welcome/welcome_page.dart';
import '../widgets/animation/route_transitions_builders.dart';

part 'router.gr.dart';
part 'router_observer.dart';

final routerProvider = Provider<AppRouter>((_) => AppRouter());

@CupertinoAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: SplashPage,
      initial: true,
    ),
    CustomRoute(
      path: '/intro',
      page: IntroPage,
      transitionsBuilder: RouteTransitionsBuilders.opacity,
      durationInMilliseconds: 1000,
    ),
    AutoRoute(
      path: '/welcome',
      page: WelcomePage,
    ),
    CustomRoute(
      path: '/login',
      page: LoginPage,
      transitionsBuilder: RouteTransitionsBuilders.opacity,
      durationInMilliseconds: 1000,
    ),
    AutoRoute(
      path: '/root_bottom_navigate',
      page: RootBottomNavigatePage,
      children: <AutoRoute>[
        AutoRoute(
          path: 'home',
          page: HomePage,
        ),
        AutoRoute(
          path: 'band',
          page: BrandPage,
        ),
        AutoRoute(
          path: 'cart',
          page: CartPage,
        ),
        AutoRoute(
          path: 'profile',
          page: ProfilePage,
        ),
      ],
    ),
  ],
)
class AppRouter extends _$AppRouter {
  AppRouter._();

  static AppRouter? _instance;

  factory AppRouter() => _instance ??= AppRouter._();
}
