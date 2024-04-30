import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:webtoon_flutter/app/modules/home/controllers/home_controller.dart';

class CategoryMenuView extends GetView<HomeController> {
  const CategoryMenuView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: CarouselSlider(
        carouselController: controller.menuCarouselController,
        items: List.generate(
          6,
          (index) => Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 4.0),
            child: FilledButton.tonal(
              onPressed: () {
                // show category index
                controller.menuCarouselController.animateToPage(index);
              },
              child: Text('Menu ${index}'),
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
