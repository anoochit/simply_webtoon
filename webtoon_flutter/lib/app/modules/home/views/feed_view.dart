import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:webtoon_flutter/app/modules/home/controllers/home_controller.dart';
import 'package:webtoon_flutter/app/modules/home/views/category_menu_view.dart';
import 'package:webtoon_flutter/app/modules/home/views/category_page_view.dart';

class FeedView extends GetView<HomeController> {
  const FeedView({super.key});
  @override
  Widget build(BuildContext context) {
    const buttonHeight = 48.0;
    return Stack(
      children: [
        // TODO : use data from database
        Obx(
          () => Container(
            padding: const EdgeInsets.only(top: buttonHeight),
            child: CarouselSlider(
              carouselController: controller.pageCarouselController,
              items: List.generate(
                controller.listCategory.length,
                (index) =>
                    CategoryPageView(category: controller.listCategory[index]),
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
        ),

        // category menu
        const SizedBox(
          height: buttonHeight,
          child: CategoryMenuView(),
        ),
      ],
    );
  }
}
