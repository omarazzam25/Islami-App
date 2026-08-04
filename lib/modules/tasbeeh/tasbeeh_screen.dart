

import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';

import '../../core/gen/assets.gen.dart';
import '../../core/them/app_color.dart';
import 'models/zekr_model.dart';

class TasbeehScreen extends StatefulWidget {
  const TasbeehScreen({super.key});

  @override
  State<TasbeehScreen> createState() => _TasbeehScreenState();
}

class _TasbeehScreenState extends State<TasbeehScreen> {
  int counter = 0;


  int currentZekrIndex = 0;

  final List<Zekr> azkar = [
    Zekr(text: 'سُـبْحانَ اللهِ', count: 33),
    Zekr(text: 'الحَمْـدُ للهِ', count: 33),
    Zekr(text: 'اللهُ أكْـبَر', count: 34),
    Zekr(text: 'لا إلهَ إلاّ اللّهُ', count: 10),
    Zekr(text: 'أستغفرُ اللهَ', count: 100),
    Zekr(text: 'لا حَوْلَ ولا قُوَّةَ إلاّ باللهِ', count: 100),
    Zekr(text: 'سُبْحانَ اللهِ وبِحَمْدِهِ', count: 100),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width:double .infinity,
      height:double .infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Assets.images.sebhaBackground.provider(),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Assets.images.headerImg.image(width: 291, height: 151),
          Gap(36),
          Text(
            'سَبِّحِ اسْمَ رَبِّكَ الأعلى ',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w700,
              fontFamily: "Janna",
              color: AppColor.secondary,
            ),
          ),
          Gap(16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: GestureDetector(

              onTap: () {
                _increaseCounter();
              },
              child: Stack(
                alignment: AlignmentGeometry.center,
                children: [
                  Transform.rotate(
                      angle: counter * 0.05,
                      child: Assets.images.sebhaEdit.image()),
                  Column(
                    children: [
                      Text(
                        azkar[currentZekrIndex].text,
                        style: TextStyle(
                          color: AppColor.secondary,
                          fontFamily: "Janna",
                          fontWeight: FontWeight.w700,
                          fontSize: 30
                        ),
                      ),
                      Gap(15),
                      Text(
                        '$counter',
                        style: TextStyle(
                          color: AppColor.secondary,
                          fontFamily: "Janna",
                          fontWeight: FontWeight.w700,
                          fontSize: 36,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _increaseCounter() {
    setState(() {
      counter++;
      if (counter == azkar[currentZekrIndex].count) {
        counter = 0;

        if (currentZekrIndex < azkar.length - 1) {
          currentZekrIndex++;
        } else {
          currentZekrIndex = 0;
        }
      }

    });
  }
}
