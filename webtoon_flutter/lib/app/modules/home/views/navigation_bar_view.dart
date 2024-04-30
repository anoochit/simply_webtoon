import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:webtoon_flutter/app/modules/home/controllers/home_controller.dart';

class NavigationBarView extends GetView<HomeController> {
  const NavigationBarView({super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: controller.navIndex.value,
        onTap: (value) => controller.navIndex.value = value,
        items: List.generate(
          controller.listMenuTile.length,
          (index) => BottomNavigationBarItem(
            icon: Icon(controller.listMenuIcon[index]),
            label: controller.listMenuTile[index],
          ),
        ),
      ),
    );
  }
}
