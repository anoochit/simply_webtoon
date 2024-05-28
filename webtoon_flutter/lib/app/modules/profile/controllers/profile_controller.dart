import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ProfileController extends GetxController {
  //

  RxInt themeMode = 0.obs;
  RxInt localeMode = 0.obs;

  List<String> themeModeTitles = [
    'dark',
    'light',
    'system',
  ];

  List<IconData> themeModeIcons = [
    Icons.dark_mode,
    Icons.light_mode,
    Icons.contrast,
  ];

  List<String> localeTitles = ['english', 'thai', 'korea'];

  List<String> localeCode = ['en_US', 'th_TH', 'ko_KR'];

  final box = GetStorage();

  void setThemeMode({required int modeIndex}) {
    themeMode.value = modeIndex;
    switch (modeIndex) {
      case 0:
        Get.changeThemeMode(ThemeMode.dark);
      case 1:
        Get.changeThemeMode(ThemeMode.light);
      case 2:
        Get.changeThemeMode(ThemeMode.system);
    }

    box.write('themeMode', modeIndex);
  }

  ThemeMode getThemSetting() {
    switch (themeMode.value) {
      case 0:
        return ThemeMode.dark;

      case 1:
        return ThemeMode.light;

      case 2:
        return ThemeMode.system;

      default:
        return ThemeMode.dark;
    }
  }

  void setLocale({required int modeIndex}) {
    localeMode.value = modeIndex;
    box.write('localeMode', modeIndex);
    Get.updateLocale(Locale(localeCode[modeIndex]));
  }

  Locale getLocaleSetting() {
    switch (localeMode.value) {
      case 0:
        return Locale(localeCode[0]);
      case 1:
        return Locale(localeCode[1]);
      case 2:
        return Locale(localeCode[2]);
      default:
        return Locale(localeCode[0]);
    }
  }
}
