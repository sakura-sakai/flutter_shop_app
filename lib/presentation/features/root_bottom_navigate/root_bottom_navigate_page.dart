import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../l10n/l10n.dart';
import '../../route/router.dart';
import '../../theme/theme.dart';

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
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: tabsRouter.activeIndex,
          type: BottomNavigationBarType.fixed,
          fixedColor: AppColors.violet,
          onTap: tabsRouter.setActiveIndex,
          iconSize: 20,
          items: [
            _NavigationItem(
              icon: CupertinoIcons.house,
              activeIcon: CupertinoIcons.house_fill,
              label: L10n.current.home,
            ),
            _NavigationItem(
              icon: CupertinoIcons.square_stack_3d_up,
              activeIcon: CupertinoIcons.square_stack_3d_up_fill,
              label: L10n.current.brand,
            ),
            _NavigationItem(
              icon: CupertinoIcons.bag,
              activeIcon: CupertinoIcons.bag_fill,
              label: L10n.current.cart,
            ),
            _NavigationItem(
              icon: CupertinoIcons.person,
              activeIcon: CupertinoIcons.person_fill,
              label: L10n.current.myPersonal,
            ),
          ],
        );
      },
    );
  }
}

class _NavigationItem extends BottomNavigationBarItem {
  _NavigationItem({
    required IconData icon,
    required IconData activeIcon,
    required String label,
  }) : super(
          icon: Icon(icon, size: 23),
          activeIcon: Icon(activeIcon, size: 23),
          label: label,
        );
}
