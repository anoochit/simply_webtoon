import 'package:get/get.dart';
import 'package:webtoon_flutter/app/serverpod.dart';

class AppController extends GetxController {
  //
  RxBool isSignedIn = false.obs;

  @override
  void onInit() {
    super.onInit();
    checkSignInSession();
  }

  void checkSignInSession() {
    isSignedIn.value = sessionManager.isSignedIn;
    sessionManager.addListener(() {
      // push session manager value
      isSignedIn.value = sessionManager.isSignedIn;
      update();
    });
  }
}
