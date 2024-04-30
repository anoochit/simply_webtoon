import 'package:flutter/material.dart';

import 'package:get/get.dart';

class LibraryView extends GetView {
  const LibraryView({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO : check signin session and add signin button
    return const Center(
      child: Text(
        'LibraryView is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
