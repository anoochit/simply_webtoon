import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:webtoon_flutter/app/serverpod.dart';

import 'app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  initServerPodClient();

  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
