import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:webtoon_flutter/app/modules/home/controllers/home_controller.dart';
import 'package:webtoon_flutter/app/modules/home/views/category_menu_view.dart';
import 'package:webtoon_flutter/app/modules/home/views/category_page_view.dart';

class FeedView extends GetView<HomeController> {
  const FeedView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final buttonHeight = 48.0;
    return Stack(
      children: [
        // category menu
        Container(
          height: buttonHeight,
          child: CategoryMenuView(),
        ),

        // book in each category
        Container(
          margin: EdgeInsets.only(top: buttonHeight),
          child: CarouselSlider(
            carouselController: controller.pageCarouselController,
            items: List.generate(
              6,
              (index) => CategoryPageView(),
            ),
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height,
              viewportFraction: 1.0,
              onPageChanged: (index, reason) {
                controller.menuIndex.value = index;
                controller.menuCarouselController.animateToPage(index);
              },
            ),
          ),
        ),
      ],
    );
  }
}
