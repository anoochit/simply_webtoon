import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt navIndex = 0.obs;
  RxBool appBarVisible = true.obs;
  RxInt menuIndex = 0.obs;

  CarouselController menuCarouselController = CarouselController();
  CarouselController pageCarouselController = CarouselController();

  final ScrollController scrollController = ScrollController();

  final listMenuTile = [
    'Home',
    'Schedule',
    'GiftBox',
    'Library',
  ];

  final listMenuIcon = [
    Icons.home,
    Icons.calendar_month,
    Icons.gif_box,
    Icons.inbox,
  ];

  @override
  void onInit() {
    super.onInit();

    // scrollbar listen
    scrollController.addListener(() {
      if (scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        appBarVisible.value = true;
      } else {
        appBarVisible.value = false;
      }
    });
  }
}
