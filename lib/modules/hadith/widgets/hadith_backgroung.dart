import 'package:flutter/material.dart';

import '../../../core/gen/assets.gen.dart';
import '../../../core/them/app_color.dart';

class HadithBackground extends StatelessWidget {
  const HadithBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Assets.images.imgLeftCorner.image(
                width: 90,
                height: 90,
                color: AppColor.black,
              ),
              Assets.images.imgRightCorner.image(
                width: 90,
                height: 90,
                color: AppColor.black,
              ),
            ],
          ),
        ),
        Spacer(),
        Assets.images.imgBottomDecoration.image(color: AppColor.black),
      ],
    );
  }
}
