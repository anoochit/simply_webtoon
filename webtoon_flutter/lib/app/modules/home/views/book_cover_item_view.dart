import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:webtoon_flutter/app/data/services/minio_service.dart';

class BookCoverItemView extends GetView {
  const BookCoverItemView(
      {Key? key,
      required this.backgroundImage,
      required this.foregroundImage,
      required this.titleImage,
      required this.color,
      required this.publisher,
      required this.onTap})
      : super(key: key);

  final String backgroundImage;
  final String foregroundImage;
  final String titleImage;
  final String color;
  final String publisher;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4.0),
      child: GestureDetector(
        onTap: () => onTap(),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              children: [
                // background
                FutureBuilder(
                  future: MinioService().getDownloadUrl(backgroundImage),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      return Container(
                        margin: EdgeInsets.only(top: 18.0),
                        width: constraints.maxWidth,
                        height: constraints.maxWidth,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          image: DecorationImage(
                            image: CachedNetworkImageProvider(
                              snapshot.data,
                              cacheKey: backgroundImage,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    }

                    return Container(
                      margin: EdgeInsets.only(top: 18.0),
                      width: constraints.maxWidth,
                      height: constraints.maxWidth,
                    );
                  },
                ),

                // foreground
                FutureBuilder(
                  future: MinioService().getDownloadUrl(foregroundImage),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      return Container(
                        alignment: Alignment.topCenter,
                        child: CachedNetworkImage(
                          imageUrl: snapshot.data,
                          cacheKey: foregroundImage,
                        ),
                      );
                    }

                    return Container();
                  },
                ),

                // title
                FutureBuilder(
                  future: MinioService().getDownloadUrl(titleImage),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      return Positioned.fill(
                        bottom: 16.0,
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              // title
                              CachedNetworkImage(
                                imageUrl: snapshot.data,
                                cacheKey: titleImage,
                              ),

                              // publisher
                              Text(
                                publisher,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .inversePrimary,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }

                    return Container();
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
