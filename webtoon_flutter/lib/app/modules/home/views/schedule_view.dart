import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ScheduleView extends GetView {
  const ScheduleView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'ScheduleView is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
