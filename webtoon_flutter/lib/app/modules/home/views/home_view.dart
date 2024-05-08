import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:webtoon_flutter/app/modules/home/views/feed_view.dart';
import 'package:webtoon_flutter/app/modules/home/views/giftbox_view.dart';
import 'package:webtoon_flutter/app/modules/home/views/library_view.dart';
import 'package:webtoon_flutter/app/modules/home/views/navigation_bar_view.dart';
import 'package:webtoon_flutter/app/modules/home/views/schedule_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    final statusBarHeight = Get.statusBarHeight;
    final onlyStatusBarHeight = MediaQuery.of(context).padding.top;

    // return Scaffold(
    //   body: Center(
    //     child: ElevatedButton(
    //       onPressed: () async {
    //         // add sample data
    //         await client.example.addSampleData();
    //       },
    //       child: Text('Add Sample Data'),
    //     ),
    //   ),
    // );

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Obx(
          () => AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            height: controller.appBarVisible.value
                ? statusBarHeight
                : onlyStatusBarHeight,
            child: AppBar(
              title: Text(controller.listMenuTile[controller.navIndex.value]),
              centerTitle: true,
              toolbarHeight:
                  controller.appBarVisible.value ? statusBarHeight : 0.0,
            ),
          ),
        ),
      ),
      body: Obx(
        () => IndexedStack(
          index: controller.navIndex.value,
          children: const [
            FeedView(),
            ScheduleView(),
            GiftboxView(),
            LibraryView(),
          ],
        ),
      ),
      bottomNavigationBar: const NavigationBarView(),
    );
  }
}
