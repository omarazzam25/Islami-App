import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:islami/modules/radio/widgets/radio_card_item.dart';

import '../../core/gen/assets.gen.dart';
import '../../core/them/app_color.dart';

class RadioScreen extends StatelessWidget {
  const RadioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final them = Theme.of(context);
    return  Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: Assets.images.radioBackground.provider(), fit: BoxFit.cover),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70.0, vertical: 20),
            child: Assets.images.headerImg.image(),
          ),

          Gap(7),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 70,vertical: 10),
                  decoration: BoxDecoration(
                    color: AppColor.primary,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Text('Radio',style: them.textTheme.bodyLarge?.copyWith(color: AppColor.black),),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 60,vertical: 10),
                  decoration: BoxDecoration(
                    color: AppColor.black.withValues(alpha: 0.7),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Text('Reciters',style: them.textTheme.bodyLarge?.copyWith(color: AppColor.secondary,fontWeight: FontWeight.w400),),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.symmetric(vertical: 12),
                itemBuilder: (context, index) {
                  return RadioCardItem();
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height: 12,);
                  },
                itemCount: 10),
          )
      ]
      ),
    );
  }
}

