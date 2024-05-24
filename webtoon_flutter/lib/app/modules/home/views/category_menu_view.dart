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
        // use data from database
        items: List.generate(
          controller.listCategory.length,
          (index) => buildmenuItem(context, index),
        ),
        options: CarouselOptions(
          height: 48.0,
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

  Container buildmenuItem(BuildContext context, int index) {
    final menuTitle = controller.listCategory[index].title;

    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 2.0),
      child: FilledButton.tonal(
        style: const ButtonStyle().copyWith(
          backgroundColor: (controller.menuIndex.value == index)
              ? WidgetStatePropertyAll(
                  Theme.of(context).colorScheme.inversePrimary,
                )
              : null,
        ),
        onPressed: () {
          // show category index
          controller.menuCarouselController.animateToPage(index);
        },
        child: Text(menuTitle),
      ),
    );
  }
}
