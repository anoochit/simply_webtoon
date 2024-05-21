import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:webtoon_client/src/protocol/espisode.dart';
import 'package:webtoon_flutter/app/data/services/minio_service.dart';
import 'package:webtoon_flutter/app/modules/read/controllers/read_controller.dart';
import 'package:webtoon_flutter/app/routes/app_pages.dart';

class EspisodeView extends GetView {
  const EspisodeView({super.key, this.espisodes});

  final List<Espisode>? espisodes;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      padding: EdgeInsets.all(4.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
      ),
      itemCount: espisodes!.length,
      itemBuilder: (BuildContext context, int index) {
        final foregroundImage = espisodes![index].cover[0];
        return GestureDetector(
          onTap: () {
            // goto read screen
            ReadController readController = Get.find<ReadController>();
            readController.espisode = espisodes![index];
            Get.toNamed(Routes.READ);
          },
          child: Column(
            children: [
              // espisode cover
              Expanded(
                child: Container(
                  width: double.maxFinite,
                  child: FutureBuilder(
                    future: MinioService().getDownloadUrl(foregroundImage),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (snapshot.hasData) {
                        return CachedNetworkImage(
                          imageUrl: snapshot.data,
                          cacheKey: foregroundImage,
                          fit: BoxFit.fitWidth,
                        );
                      }

                      return Container();
                    },
                  ),
                ),
              ),

              // title
              Text(espisodes![index].title),
            ],
          ),
        );
      },
    );
  }
}
