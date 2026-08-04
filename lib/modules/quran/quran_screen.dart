import 'package:flutter/material.dart';
import 'package:islami/core/them/app_color.dart';

import '../../core/gen/assets.gen.dart';

class QuranScreen extends StatelessWidget {
  const QuranScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     decoration: BoxDecoration(
       image: DecorationImage(image: Assets.images.quranBackground.provider(), fit: BoxFit.cover),
     ),
      child: Column(
        children: [
          Assets.images.headerImg.image(),
        ],
      ),
    );


        }
}
