import 'package:flutter/material.dart';

import 'package:get/get.dart';

class GiftboxView extends GetView {
  const GiftboxView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'GiftboxView is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
