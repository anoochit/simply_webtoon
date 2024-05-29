import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:webtoon_client/webtoon_client.dart';
import 'package:webtoon_flutter/app/data/services/webtoon_services.dart';

class HomeController extends GetxController {
  RxInt navIndex = 0.obs;
  RxBool appBarVisible = true.obs;
  RxInt menuIndex = 0.obs;

  CarouselController menuCarouselController = CarouselController();
  CarouselController pageCarouselController = CarouselController();

  final ScrollController scrollController = ScrollController();

  final listMenuTile = [
    'home',
    'schedule',
    'giftbox',
    'library',
  ];

  final listMenuIcon = [
    Icons.home,
    Icons.calendar_month,
    Icons.card_giftcard,
    Icons.inbox,
  ];

  RxList<Category> listCategory = <Category>[].obs;

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

    // load category
    loadCategory();
  }

  Future<void> loadCategory() async {
    final result = await WebtoonService().getCategories();
    listCategory.value = result;
  }
}
