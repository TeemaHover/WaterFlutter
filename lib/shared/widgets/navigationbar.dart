import 'package:app/modules/home/controllers/controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../shared/index.dart';

class MainNavigationBar extends StatelessWidget {
  const MainNavigationBar({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final homeController = Get.put(HomeController());
    return Obx(() => NavigationBar(
        selectedIndex: homeController.currentIndex.value,
        onDestinationSelected: (value) => homeController.changeNavIndex(value),
        destinations: mainNavbar.map((e) {
          NavigationDestination body;
          body = NavigationDestination(
            icon: Image.asset(
              e['icon']!,
              width: 30,
              height: 30,
            ),
            selectedIcon: Image.asset(
              e['activeIcon']!,
              width: 30,
              height: 30,
            ),
            label: e['label']!,
          );

          return body;
        }).toList()));
  }
}
