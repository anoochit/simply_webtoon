import 'package:flutter/material.dart';

import 'package:get/get.dart';

class InfoView extends GetView {
  const InfoView({super.key, required this.description});

  final String description;
  @override
  Widget build(BuildContext context) {
    return Text(
      description,
    );
  }
}
