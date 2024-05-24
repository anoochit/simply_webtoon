import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:parallax_animation/parallax_animation.dart';
import 'package:webtoon_flutter/app/data/services/minio_service.dart';

class BookGridItemView extends GetView {
  const BookGridItemView(
      {super.key,
      required this.backgroundImage,
      required this.foregroundImage,
      required this.titleImage,
      required this.color,
      required this.onTap});

  final String backgroundImage;
  final String foregroundImage;
  final String titleImage;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6.0),
      child: GestureDetector(
        onTap: () => onTap(),
        child: ParallaxWidget(
          fixedHorizontal: true,
          overflowHeightFactor: 1.3,
          background: FutureBuilder(
            future: MinioService().getDownloadUrl(backgroundImage),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(
                        snapshot.data,
                        cacheKey: backgroundImage,
                      ),
                    ),
                  ),
                );
              }
              return Container();
            },
          ),
          child: Stack(
            children: [
              // foreground image
              FutureBuilder(
                future: MinioService().getDownloadUrl(foregroundImage),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    return CachedNetworkImage(
                      imageUrl: snapshot.data,
                      cacheKey: foregroundImage,
                    );
                  }

                  return Container();
                },
              ),

              // gradiant
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: const [
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

              // title image
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: FutureBuilder(
                    future: MinioService().getDownloadUrl(titleImage),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (snapshot.hasData) {
                        return CachedNetworkImage(
                          imageUrl: snapshot.data,
                          cacheKey: titleImage,
                        );
                      }

                      return Container();
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
