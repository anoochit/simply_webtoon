import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';
import 'feed_view.dart';
import 'giftbox_view.dart';
import 'library_view.dart';
import 'navigation_bar_view.dart';
import 'schedule_view.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    final statusBarHeight = Get.statusBarHeight + kToolbarHeight;
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
              leading: IconButton(
                onPressed: () {
                  // TODO : goto search page
                },
                icon: const Icon(Icons.search),
              ),
              actions: [
                IconButton(
                  onPressed: () {
                    // TODO : goto profile page
                    Get.toNamed(Routes.PROFILE);
                  },
                  icon: const Icon(Icons.sort),
                )
              ],
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
