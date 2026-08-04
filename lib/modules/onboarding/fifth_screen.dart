import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';

import '../../core/gen/assets.gen.dart';
import '../../core/them/app_color.dart';

class FifthScreen extends StatelessWidget {
  const FifthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Assets.images.headerImg.image(width: 291,height: 171),
          Gap(60),
          Assets.images.radioImg.image(),
          Gap(40),
          Text('Holy Quran Radio',
            style:TextStyle(
                fontSize: 24,
                fontWeight:FontWeight.w700,
                fontFamily: "Janna",
                color: AppColor.primary
            ),
          ),
          Gap(40),
          Text('You can listen to the Holy Quran Radio through the application for free and easily',
            textAlign: TextAlign.center,
            style:TextStyle(
                fontSize: 20,
                fontWeight:FontWeight.w700,
                fontFamily: "Janna",
                color: AppColor.primary
            ),
          ),



        ],
      ),

    );
  }
}
