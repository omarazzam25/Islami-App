import 'package:flutter/material.dart';

import '../../../core/them/app_color.dart';

class CustomIndicator extends StatelessWidget {
  final bool active;

  CustomIndicator({super.key, required this.active});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: active ? 18 : 7,
      height: 7,
      duration: Duration(milliseconds: 250),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(27),
        color: active ? AppColor.primary : AppColor.gray,
      ),
    );
  }
}