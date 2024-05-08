import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:webtoon_client/src/protocol/category.dart';
import 'package:webtoon_flutter/app/modules/home/controllers/home_controller.dart';
import 'package:webtoon_flutter/app/modules/home/views/book_cover_item_view.dart';

class CategoryPageView extends GetView<HomeController> {
  const CategoryPageView({super.key, required this.category});

  final Category category;

  @override
  Widget build(BuildContext context) {
    final books = category.books;

    if (books!.isNotEmpty) {
      final backgroundImage = books.first.cover[0];
      final foregroundImage = books.first.cover[1];
      final titleImage = books.first.cover[3];
      final color = books.first.color;
      final publisher = books.first.publisher;

      return ListView(
        controller: controller.scrollController,
        children: [
          const Gap(56.0),
          // cover
          BookCoverItemView(
            backgroundImage: backgroundImage,
            foregroundImage: foregroundImage,
            titleImage: titleImage,
            color: color,
            publisher: publisher,
            onTap: () {
              // TODO : goto page
            },
          ),

          // TODO : grid list books
          GridView.builder(
            shrinkWrap: true,
            itemCount: 10,
            physics: const ScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemBuilder: (context, index) {
              return const Card();
            },
          )
        ],
      );
    } else {
      return Container();
    }
  }
}
