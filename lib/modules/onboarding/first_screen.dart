import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:islami/core/them/app_color.dart';

import '../../core/gen/assets.gen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  width: size.width * 0.70,
                  child: AspectRatio(
                    aspectRatio: 291 / 171,
                    child: Assets.images.headerImg.image(
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                Gap(size.height * 0.07),

                SizedBox(
                  width: size.width * 0.75,
                  child: Assets.images.welcomeImg.image(
                    fit: BoxFit.contain,
                  ),
                ),

                Gap(size.height * 0.05),

                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.05,
                  ),
                  child: Text(
                    'Welcome To Islami App',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: size.width * 0.06,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Janna',
                      color: AppColor.primary,
                    ),
                  ),
                ),

                Gap(size.height * 0.03),
              ],
            ),
          ),
        ),
      ),
    );
  }
}