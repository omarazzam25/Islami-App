import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:islami/core/them/app_color.dart';
import '../../core/gen/assets.gen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Assets.images.headerImg.image(width: 291,height: 171),
          Gap(79),
          Assets.images.welcomeImg.image(),
          Gap(70),
          Text('Welcome To Islmi App',
            style:TextStyle(
            fontSize: 24,
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
