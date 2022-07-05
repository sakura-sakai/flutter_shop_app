import 'package:auto_route/auto_route.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shop_app/presentation/route/router.dart';
import 'package:shop_app/presentation/theme/theme.dart';

import '../presentation/l10n/l10n.dart';
import 'app_responsive.dart';

class App extends HookConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.read(routerProvider);
    final appRouterObserver = ref.read(routerObserverProvider);

    return DevicePreview(
      enabled: kDebugMode,
      builder: (BuildContext context) {
        return AppResponsive(
          child: MaterialApp.router(
            title: 'Sakura Base 2',
            // Theme
            theme: kLightThemeData,
            darkTheme: kDarkThemeData,

            // Router
            routeInformationParser: appRouter.defaultRouteParser(),
            routerDelegate: AutoRouterDelegate(
              appRouter,
              navigatorObservers: () => [appRouterObserver],
            ),

            // Locale
            supportedLocales: L10n.delegate.supportedLocales,
            localizationsDelegates: const [
              L10n.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],

            // DevicePreview
            builder: DevicePreview.appBuilder,
            useInheritedMediaQuery: true,
          ),
        );
      },
    );
  }
}
