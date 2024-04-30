import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:webtoon_flutter/app/modules/home/controllers/home_controller.dart';

class CategoryPageView extends GetView<HomeController> {
  const CategoryPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      controller: controller.scrollController,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 2 / 3,
      ),
      itemBuilder: (context, index) {
        return Card();
      },
    );
  }
}
