import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:webtoon_flutter/app/modules/home/controllers/home_controller.dart';

class CategoryMenuView extends GetView<HomeController> {
  const CategoryMenuView({super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CarouselSlider(
        carouselController: controller.menuCarouselController,
        // TODO : use data from database
        items: List.generate(
          6,
          (index) => Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 2.0),
            child: FilledButton.tonal(
              style: const ButtonStyle().copyWith(
                backgroundColor: (controller.menuIndex.value == index)
                    ? MaterialStatePropertyAll(
                        Theme.of(context).colorScheme.inversePrimary,
                      )
                    : null,
              ),
              onPressed: () {
                // show category index
                controller.menuCarouselController.animateToPage(index);
              },
              child: Text('Menu $index'),
            ),
          ),
        ),
        options: CarouselOptions(
          height: 64.0,
          viewportFraction: 0.3,
          onPageChanged: (index, reason) {
            // update menu index
            controller.menuIndex.value = index;
            controller.pageCarouselController.animateToPage(index);
          },
        ),
      ),
    );
  }
}
