import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:webtoon_flutter/app/bindings/root_bindings.dart';
import 'package:webtoon_flutter/app/data/services/box_storage.dart';
import 'package:webtoon_flutter/app/modules/profile/controllers/profile_controller.dart';
import 'package:webtoon_flutter/app/serverpod.dart';
import 'package:webtoon_flutter/generated/locales.g.dart';

import 'app/routes/app_pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initServerPodClient();

  await initializedBoxStorage();

  loadSetings();

  runApp(
    GetBuilder<ProfileController>(
      builder: (controller) {
        return GetMaterialApp(
          title: "Application",
          initialRoute: AppPages.INITIAL,
          initialBinding: RootBinding(),
          getPages: AppPages.routes,
          themeMode: controller.getThemSetting(),
          theme: ThemeData(
            brightness: Brightness.light,
            useMaterial3: true,
          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
            useMaterial3: true,
          ),
          locale: controller.getLocaleSetting(),
          translationsKeys: AppTranslation.translations,
        );
      },
    ),
  );
}
