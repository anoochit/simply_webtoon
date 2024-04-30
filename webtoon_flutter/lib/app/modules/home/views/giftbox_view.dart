import 'package:flutter/material.dart';

import 'package:get/get.dart';

class GiftboxView extends GetView {
  const GiftboxView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'GiftboxView is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
