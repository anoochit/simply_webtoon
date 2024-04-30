import 'package:flutter/material.dart';

import 'package:get/get.dart';

class LibraryView extends GetView {
  const LibraryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'LibraryView is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
