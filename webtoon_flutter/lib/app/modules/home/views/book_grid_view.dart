import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:webtoon_client/src/protocol/book.dart';
import 'package:webtoon_flutter/app/modules/home/views/book_grid_item_view.dart';

import '../../../routes/app_pages.dart';
import '../../book_detail/controllers/book_detail_controller.dart';

class BookGridView extends GetView {
  const BookGridView({Key? key, required this.books}) : super(key: key);

  final List<Book> books;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(4.0),
      shrinkWrap: true,
      itemCount: books.length,
      physics: const ScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 0.47,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
      ),
      itemBuilder: (context, index) {
        final book = books[index];
        final backgroundImage = book.cover[0];
        final foregroundImage = book.cover[2];
        final titleImage = book.cover[3];
        final color = book.color;

        return BookGridItemView(
            backgroundImage: backgroundImage,
            foregroundImage: foregroundImage,
            titleImage: titleImage,
            color: Color(int.parse(color.substring(2), radix: 16)),
            onTap: () {
              // TODO:  goto book detail screen
              BookDetailController bookDetailController =
                  Get.find<BookDetailController>();
              bookDetailController.book = book;
              Get.toNamed(Routes.BOOK_DETAIL);
            });
      },
    );
  }
}
