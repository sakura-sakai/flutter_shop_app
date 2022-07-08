// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const SplashPage());
    },
    IntroRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const IntroPage(),
          transitionsBuilder: RouteTransitionsBuilders.opacity,
          durationInMilliseconds: 1000,
          opaque: true,
          barrierDismissible: false);
    },
    WelcomeRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const WelcomePage());
    },
    LoginRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const LoginPage(),
          transitionsBuilder: RouteTransitionsBuilders.opacity,
          durationInMilliseconds: 500,
          opaque: true,
          barrierDismissible: false);
    },
    SignUpRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const SignUpPage(),
          transitionsBuilder: RouteTransitionsBuilders.opacity,
          durationInMilliseconds: 500,
          opaque: true,
          barrierDismissible: false);
    },
    RootBottomNavigateRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const RootBottomNavigatePage());
    },
    HomeRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const HomePage());
    },
    BrandRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const BrandPage());
    },
    CartRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const CartPage());
    },
    ProfileRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const ProfilePage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(SplashRoute.name, path: '/'),
        RouteConfig(IntroRoute.name, path: '/intro'),
        RouteConfig(WelcomeRoute.name, path: '/welcome'),
        RouteConfig(LoginRoute.name, path: '/login'),
        RouteConfig(SignUpRoute.name, path: '/sign_up'),
        RouteConfig(RootBottomNavigateRoute.name,
            path: '/root_bottom_navigate',
            children: [
              RouteConfig(HomeRoute.name,
                  path: 'home', parent: RootBottomNavigateRoute.name),
              RouteConfig(BrandRoute.name,
                  path: 'band', parent: RootBottomNavigateRoute.name),
              RouteConfig(CartRoute.name,
                  path: 'cart', parent: RootBottomNavigateRoute.name),
              RouteConfig(ProfileRoute.name,
                  path: 'profile', parent: RootBottomNavigateRoute.name)
            ])
      ];
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [IntroPage]
class IntroRoute extends PageRouteInfo<void> {
  const IntroRoute() : super(IntroRoute.name, path: '/intro');

  static const String name = 'IntroRoute';
}

/// generated route for
/// [WelcomePage]
class WelcomeRoute extends PageRouteInfo<void> {
  const WelcomeRoute() : super(WelcomeRoute.name, path: '/welcome');

  static const String name = 'WelcomeRoute';
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [SignUpPage]
class SignUpRoute extends PageRouteInfo<void> {
  const SignUpRoute() : super(SignUpRoute.name, path: '/sign_up');

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [RootBottomNavigatePage]
class RootBottomNavigateRoute extends PageRouteInfo<void> {
  const RootBottomNavigateRoute({List<PageRouteInfo>? children})
      : super(RootBottomNavigateRoute.name,
            path: '/root_bottom_navigate', initialChildren: children);

  static const String name = 'RootBottomNavigateRoute';
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: 'home');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [BrandPage]
class BrandRoute extends PageRouteInfo<void> {
  const BrandRoute() : super(BrandRoute.name, path: 'band');

  static const String name = 'BrandRoute';
}

/// generated route for
/// [CartPage]
class CartRoute extends PageRouteInfo<void> {
  const CartRoute() : super(CartRoute.name, path: 'cart');

  static const String name = 'CartRoute';
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: 'profile');

  static const String name = 'ProfileRoute';
}
