import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';

import '../../core/gen/assets.gen.dart';
import '../../core/them/app_color.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: size.width * 0.70,
                child: AspectRatio(
                  aspectRatio: 291 / 171,
                  child: Assets.images.headerImg.image(fit: BoxFit.contain),
                ),
              ),

              Gap(size.height * 0.04),

              SizedBox(
                width: size.width * 0.75,
                child: Assets.images.bearishImg.image(fit: BoxFit.contain),
              ),

              Gap(size.height * 0.04),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                child: Text(
                  'Bearish',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: size.width * 0.06,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Janna',
                    color: AppColor.primary,
                  ),
                ),
              ),

              Gap(size.height * 0.04),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.08),
                child: Text(
                  'Praise the name of your Lord, the Most High',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: size.width * 0.05,
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
    );
  }
}
