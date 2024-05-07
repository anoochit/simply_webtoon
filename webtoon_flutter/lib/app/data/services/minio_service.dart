import 'package:webtoon_flutter/app/config.dart';

class MinioService {
  // get download url
  Future<String> getDownloadUrl(String path) async {
    // [bucket] / [filename]

    final bucket = path.split('/')[0];
    final object = path.split('/')[1];

    final result = await minio.presignedGetObject(bucket, object);

    return result;
  }
}
