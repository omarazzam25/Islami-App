import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';

import '../../core/gen/assets.gen.dart';
import '../../core/them/app_color.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Assets.images.headerImg.image(width: 291,height: 171),
          Gap(41),
          Assets.images.bearishImg.image(),
          Gap(41),
          Text('Bearish',
            style:TextStyle(
                fontSize: 24,
                fontWeight:FontWeight.w700,
                fontFamily: "Janna",
                color: AppColor.primary
            ),
          ),
          Gap(41),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text('Praise the name of your Lord, the Most High',
              textAlign: TextAlign.center,
              style:TextStyle(
                  fontSize: 20,
                  fontWeight:FontWeight.w700,
                  fontFamily: "Janna",
                  color: AppColor.primary
              ),
            ),
          ),



        ],
      ),

    );
  }
}
