import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:webtoon_client/webtoon_client.dart';

class CommentView extends GetView {
  const CommentView({super.key, this.comments});

  final List<Comment>? comments;

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'CommentView is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
