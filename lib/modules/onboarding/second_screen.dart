import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';

import '../../core/gen/assets.gen.dart';
import '../../core/them/app_color.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Assets.images.headerImg.image(width: 291,height: 171),
          Gap(39),
          Assets.images.mosqueImg.image(),
          Gap(39),
          Text('Welcome To Islami',
            style:TextStyle(
                fontSize: 24,
                fontWeight:FontWeight.w700,
                fontFamily: "Janna",
                color: AppColor.primary
            ),
          ),
          Gap(39),
          Text('We Are Very Excited To Have You In Our Community',
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
