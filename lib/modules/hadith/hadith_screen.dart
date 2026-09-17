import 'package:flutter/material.dart';

import '../../core/gen/assets.gen.dart';

class HadithScreen extends StatelessWidget {
  const HadithScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: Assets.images.hadithBackground.provider(), fit: BoxFit.cover),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70.0,vertical: 30),
            child: Assets.images.headerImg.image(),
          )
        ],
      ),
    );

  }
}
