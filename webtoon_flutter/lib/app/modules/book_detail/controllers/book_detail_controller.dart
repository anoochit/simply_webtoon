import 'package:get/get.dart';
import 'package:webtoon_client/webtoon_client.dart';

class BookDetailController extends GetxController {
  late Book book;
  RxInt navIndex = 0.obs;
}
