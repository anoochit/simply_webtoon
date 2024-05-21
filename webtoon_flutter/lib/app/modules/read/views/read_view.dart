import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:webtoon_flutter/app/data/services/minio_service.dart';

import '../controllers/read_controller.dart';

class ReadView extends GetView<ReadController> {
  const ReadView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final espisode = controller.espisode;
    final images = espisode.image;
    final title = espisode.title;

    return Scaffold(
      body: Stack(
        children: [
          // contents
          GestureDetector(
            onTap: () {
              // toggle show / hide appbar and toolbar
              controller.toggleAppBar();
            },
            child: SingleChildScrollView(
              controller: controller.scrollController,
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: images.length,
                itemBuilder: (BuildContext context, int index) {
                  return FutureBuilder(
                    future: MinioService().getDownloadUrl(images[index]),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (snapshot.hasData) {
                        return CachedNetworkImage(
                          imageUrl: snapshot.data,
                          cacheKey: images[index],
                        );
                      }
                      return Container();
                    },
                  );
                },
              ),
            ),
          ),

          // appbar
          GetBuilder<ReadController>(
            builder: (controller) {
              return FadeTransition(
                opacity: controller.fadeAnimation,
                child: Container(
                  height: Get.statusBarHeight,
                  width: Get.width,
                  color: Theme.of(context).colorScheme.inversePrimary,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                          onPressed: () => Get.back(),
                        ),
                        Text(
                          title,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const Gap(48.0),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),

          // bootom toolbar
          GetBuilder<ReadController>(
            builder: (controller) {
              return Positioned.fill(
                child: FadeTransition(
                  opacity: controller.fadeAnimation,
                  child: Container(
                    width: Get.width,
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 32.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // previous button
                          IconButton.filled(
                            icon: const Icon(
                              Icons.arrow_back,
                            ),
                            onPressed: () {},
                          ),
                          // auto scroll icon button
                          IconButton.filled(
                            icon: const Icon(
                              Icons.play_arrow,
                            ),
                            onPressed: () {
                              // auto scroll
                              controller.autoScroll();
                            },
                          ),
                          // next button
                          IconButton.filled(
                            icon: const Icon(
                              Icons.arrow_forward,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
