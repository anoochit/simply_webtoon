import 'package:flutter/material.dart';

import 'package:get/get.dart';

class CommentView extends GetView {
  const CommentView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'CommentView is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
