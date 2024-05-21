import 'package:get/get.dart';
import 'package:webtoon_flutter/app/controllers/app_controller.dart';
import 'package:webtoon_flutter/app/modules/book_detail/controllers/book_detail_controller.dart';

import '../modules/read/controllers/read_controller.dart';

class RootBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ReadController(), permanent: true);
    Get.put(BookDetailController(), permanent: true);
    Get.put(AppController(), permanent: true);
  }
}
