import 'package:webtoon_client/webtoon_client.dart';
import 'package:webtoon_flutter/app/serverpod.dart';

class WebtoonService {
  // get category
  Future<List<Category>> getCategories() async {
    final result = await client.category.getCategories();

    return result;
  }
}
