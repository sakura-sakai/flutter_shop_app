import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../l10n/l10n.dart';
import '../../route/router.dart';

class RootBottomNavigatePage extends HookWidget {
  const RootBottomNavigatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRoute(),
        BrandRoute(),
        CartRoute(),
        ProfileRoute(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: tabsRouter.setActiveIndex,
          iconSize: 20,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.home,
                size: 23.0,
              ),
              label: L10n.current.home,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.shop),
              label: L10n.current.brand,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.shopping_cart),
              label: L10n.current.brand,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.person),
              label: L10n.current.brand,
            ),
          ],
        );
      },
    );
  }
}
