import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:webtoon_client/src/protocol/book.dart';
import 'package:webtoon_flutter/app/modules/home/views/book_grid_item_view.dart';

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
        final backgroundImage = books[index].cover[0];
        final foregroundImage = books[index].cover[2];
        final titleImage = books[index].cover[3];
        final color = books[index].color;

        return BookGridItemView(
          backgroundImage: backgroundImage,
          foregroundImage: foregroundImage,
          titleImage: titleImage,
          color: Color(int.parse(color.substring(2), radix: 16)),
        );
      },
    );
  }
}
