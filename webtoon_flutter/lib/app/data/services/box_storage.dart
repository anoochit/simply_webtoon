// initial box storage
import 'dart:developer';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:webtoon_flutter/app/modules/profile/controllers/profile_controller.dart';

initializedBoxStorage() async {
  await GetStorage.init();
}

// get settings data
loadSetings() {
  ProfileController profileController = Get.put(
    ProfileController(),
    permanent: true,
  );

  final box = GetStorage();
  int? themeModeIndex = box.read('themeMode');
  int? localeMode = box.read('localeMode');

  profileController.themeMode.value = themeModeIndex ?? 0;
  profileController.localeMode.value = localeMode ?? 0;

  log('theme = ${profileController.themeMode.value} ');
  log('locale = ${profileController.localeMode.value} ');
}
