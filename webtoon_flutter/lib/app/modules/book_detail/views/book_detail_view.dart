import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:webtoon_flutter/app/data/services/minio_service.dart';
import 'package:webtoon_flutter/app/modules/book_detail/views/comment_view.dart';
import 'package:webtoon_flutter/app/modules/book_detail/views/espisode_view.dart';
import 'package:webtoon_flutter/app/modules/book_detail/views/info_view.dart';

import '../controllers/book_detail_controller.dart';

class BookDetailView extends GetView<BookDetailController> {
  const BookDetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final book = controller.book;

    final backgroundImage = book.cover[0];
    final foregroundImage = book.cover[1];
    final title = book.title;
    final color = Color(int.parse(book.color.substring(2), radix: 16));
    final publisher = book.publisher;
    final espisodes = book.espisodes;
    final description = book.description;
    final comments = book.comments;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // header
          SliverAppBar(
            pinned: true,
            primary: true,
            backgroundColor: color,
            surfaceTintColor: color,
            expandedHeight: MediaQuery.sizeOf(context).width * 0.8,
            iconTheme: IconThemeData(color: Colors.white),
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              background: FutureBuilder(
                future: MinioService().getDownloadUrl(backgroundImage),
                builder:
                    (BuildContext context, AsyncSnapshot backgroundSnapshot) {
                  if (backgroundSnapshot.hasData) {
                    return Container(
                      width: MediaQuery.sizeOf(context).width,
                      height: MediaQuery.sizeOf(context).width * 0.8,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: CachedNetworkImageProvider(
                            backgroundSnapshot.data,
                            cacheKey: backgroundImage,
                          ),
                        ),
                      ),
                      child: FutureBuilder(
                        future: MinioService().getDownloadUrl(foregroundImage),
                        builder: (BuildContext context,
                            AsyncSnapshot foregroundSnapshot) {
                          if (foregroundSnapshot.hasData) {
                            return Container(
                              child: Stack(
                                children: [
                                  // foreground image
                                  Center(
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.9,
                                      child: CachedNetworkImage(
                                        imageUrl: foregroundSnapshot.data,
                                        cacheKey: foregroundImage,
                                      ),
                                    ),
                                  ),

                                  // gradiant
                                  Positioned.fill(
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          stops: [
                                            0.3,
                                            0.8,
                                          ],
                                          colors: [
                                            Colors.transparent,
                                            color,
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),

                                  // title
                                  Positioned.fill(
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width,
                                      alignment: Alignment.bottomCenter,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          // title
                                          Text(
                                            title,
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleLarge!
                                                .copyWith(color: Colors.white),
                                          ),
                                          Gap(8.0),

                                          // publisher
                                          Text(
                                            publisher,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall!
                                                .copyWith(color: Colors.white),
                                          ),
                                          Gap(8.0),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            );
                          }
                          return Container();
                        },
                      ),
                    );
                  }

                  return Container();
                },
              ),
            ),
          ),

          // tabbar
          SliverAppBar(
            pinned: true,
            primary: false,
            automaticallyImplyLeading: false,
            backgroundColor: color,
            surfaceTintColor: color,
            flexibleSpace: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // espisode
                TextButton(
                  onPressed: () {
                    controller.navIndex.value = 0;
                  },
                  child: Text(
                    'Espisode',
                    style: TextStyle(color: Colors.white),
                  ),
                ),

                // info
                TextButton(
                  onPressed: () {
                    controller.navIndex.value = 1;
                  },
                  child: Text(
                    'Info',
                    style: TextStyle(color: Colors.white),
                  ),
                ),

                // comments
                TextButton(
                  onPressed: () {
                    controller.navIndex.value = 2;
                  },
                  child: Text(
                    'Comment',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),

          // content
          SliverToBoxAdapter(
            child: Obx(
              () => IndexedStack(
                index: controller.navIndex.value,
                children: [
                  EspisodeView(espisodes: espisodes),
                  InfoView(),
                  CommentView(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
