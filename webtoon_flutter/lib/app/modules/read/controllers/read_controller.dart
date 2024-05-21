import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:webtoon_client/webtoon_client.dart';

class ReadController extends GetxController
    with GetSingleTickerProviderStateMixin {
  //TODO: Implement ReadController
  late Espisode espisode;
  ScrollController scrollController = ScrollController();

  late AnimationController animationController;
  late Animation<double> fadeAnimation;
  RxBool isAppBarVisible = true.obs;

  @override
  void onInit() {
    super.onInit();
    animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    fadeAnimation =
        Tween<double>(begin: 1.0, end: 0.0).animate(animationController);

    scrollController.addListener(() {
      if (scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        animationController.forward();
        isAppBarVisible.value = false;
      }
      update();
    });
  }

  void toggleAppBar() {
    if (isAppBarVisible.value) {
      animationController.forward();
    } else {
      animationController.reverse();
    }
    isAppBarVisible.value = !isAppBarVisible.value;
    update();
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }

  void autoScroll() {
    animationController.forward();
    isAppBarVisible.value = false;

    scrollController.animateTo(
      scrollController.position.maxScrollExtent,
      duration: const Duration(seconds: 20),
      curve: Curves.easeIn,
    );

    update();
  }
}
