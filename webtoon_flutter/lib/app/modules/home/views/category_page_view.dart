import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:parallax_animation/parallax_animation.dart';
import 'package:webtoon_client/src/protocol/category.dart';
import 'package:webtoon_flutter/app/modules/book_detail/controllers/book_detail_controller.dart';
import 'package:webtoon_flutter/app/modules/home/controllers/home_controller.dart';
import 'package:webtoon_flutter/app/modules/home/views/book_cover_item_view.dart';
import 'package:webtoon_flutter/app/modules/home/views/book_grid_view.dart';
import 'package:webtoon_flutter/app/routes/app_pages.dart';

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

      return ParallaxArea(
        child: ListView(
          controller: controller.scrollController,
          children: [
            const Gap(56.0),
            // cover
            BookCoverItemView(
              backgroundImage: backgroundImage,
              foregroundImage: foregroundImage,
              titleImage: titleImage,
              color: Color(int.parse(color.substring(2), radix: 16)),
              publisher: publisher,
              onTap: () {
                // TODO : goto book detail screen
                BookDetailController bookDetailController =
                    Get.find<BookDetailController>();
                bookDetailController.book = books.first;
                Get.toNamed(Routes.BOOK_DETAIL);
              },
            ),

            // TODO : grid list books
            BookGridView(books: books),
          ],
        ),
      );
    } else {
      return Container();
    }
  }
}
