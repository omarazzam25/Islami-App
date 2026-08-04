import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';

import '../../../core/gen/assets.gen.dart';

class CustomSuraItem extends StatelessWidget {
  const CustomSuraItem({super.key});

  @override
  Widget build(BuildContext context) {
    final them = Theme.of(context);
    return Row(
      children: [
        Assets.images.imgSurNumberFrame.image(width: 52, height: 52),
        Gap(24),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Al-Fatiha', style: them.textTheme.titleLarge?.copyWith( color: Colors.white)),
            Gap(10),
            Text('7 Verses', style: them.textTheme.titleLarge?.copyWith( color: Colors.white,fontSize: 14)),
          ],
        ),
        Spacer(),
        Text('الفاتحه', style: them.textTheme.titleLarge?.copyWith( color: Colors.white)),
      ],
    );
  }
}
