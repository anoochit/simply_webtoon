import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:serverpod_auth_email_flutter/serverpod_auth_email_flutter.dart';
import 'package:webtoon_flutter/app/serverpod.dart';

import '../../../controllers/app_controller.dart';

class LibraryView extends GetView {
  const LibraryView({super.key});
  @override
  Widget build(BuildContext context) {
    // check signin session and add signin button

    return GetBuilder<AppController>(builder: (controller) {
      return Center(
        child: (sessionManager.isSignedIn)
            ? Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'LibraryView is working',
                    style: TextStyle(fontSize: 20),
                  ),
                  TextButton(
                    onPressed: () {
                      // sign out
                      sessionManager.signOut();
                    },
                    child: const Text('Sign Out'),
                  )
                ],
              )
            : SignInWithEmailButton(
                caller: client.modules.auth,
              ),
      );
    });
  }
}
