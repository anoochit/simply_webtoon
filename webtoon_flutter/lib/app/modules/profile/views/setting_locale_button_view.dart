import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SettingLocaleButtonView extends GetView {
  const SettingLocaleButtonView(
      {super.key,
      required this.title,
      required this.isSelected,
      required this.onTap});

  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        decoration: BoxDecoration(
          color: (isSelected)
              ? Theme.of(context).colorScheme.inversePrimary
              : Theme.of(context).colorScheme.onInverseSurface,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Center(
          child: Text(title),
        ),
      ),
    );
  }
}
