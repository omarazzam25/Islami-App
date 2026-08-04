import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';

import '../../core/gen/assets.gen.dart';
import '../../core/them/app_color.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Assets.images.headerImg.image(width: 291,height: 171),
          Gap(50),
          Assets.images.quranImg.image(),
          Gap(51),
          Text('Reading the Quran',
            style:TextStyle(
                fontSize: 24,
                fontWeight:FontWeight.w700,
                fontFamily: "Janna",
                color: AppColor.primary
            ),
          ),
          Gap(50),
          Text('Read, and your Lord is the Most Generous',
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
