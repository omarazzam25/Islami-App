import 'package:flutter/material.dart';

import '../../../core/gen/assets.gen.dart';
import '../../../core/them/app_color.dart';

class MostRecentCard extends StatelessWidget {
  const MostRecentCard({super.key});

  @override
  Widget build(BuildContext context) {
    final them = Theme.of(context);
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColor.primary,
      ),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Al-Anbiya' , style: them.textTheme.headlineSmall),

              Text('الأنبياء' , style: them.textTheme.headlineSmall),

              Text('112 Verses ' , style: them.textTheme.titleLarge?.copyWith(fontSize: 14),)
            ],
          ),
          Assets.images.mostRecentImg.image(),
        ],
      ),

    );
  }
}
