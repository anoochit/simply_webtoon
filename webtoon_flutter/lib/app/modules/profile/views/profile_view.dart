import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:webtoon_flutter/app/modules/profile/views/setting_button_view.dart';
import 'package:webtoon_flutter/app/modules/profile/views/setting_locale_button_view.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ProfileView'),
          centerTitle: true,
        ),
        body: Obx(
          () => ListView(
            children: [
              // theme setting
              GridView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                children:
                    List.generate(controller.themeModeTitles.length, (index) {
                  final title = controller.themeModeTitles[index].tr;
                  final icon = controller.themeModeIcons[index];
                  return SettingButtonView(
                    title: title,
                    icon: icon,
                    isSelected: (controller.themeMode.value == index),
                    onTap: () {
                      //  set theme
                      controller.setThemeMode(modeIndex: index);
                    },
                  );
                }),
              ),

              // locale setting
              GridView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 3 / 2,
                ),
                children:
                    List.generate(controller.localeTitles.length, (index) {
                  final title = controller.localeTitles[index].tr;

                  return SettingLocaleButtonView(
                      title: title,
                      isSelected: (controller.localeMode.value == index),
                      onTap: () {
                        // set locale
                        controller.setLocale(modeIndex: index);
                      });
                }),
              )
            ],
          ),
        ));
  }
}
