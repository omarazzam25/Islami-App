import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:islami/core/them/app_color.dart';
import 'package:islami/core/widgets/custom_text_form_field.dart';

import '../../core/gen/assets.gen.dart';

class QuranScreen extends StatelessWidget {
  const QuranScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final them = Theme.of(context);
    return Container(
     decoration: BoxDecoration(
       image: DecorationImage(image: Assets.images.quranBackground.provider(), fit: BoxFit.cover),
     ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Assets.images.headerImg.image(),
            Gap(21),
            CustomTextFormField(),
            Gap(20),
            Text('Most Recently',style: them.textTheme.bodyLarge?.copyWith(fontSize: 16),
            ),



          ],
        ),
      ),
    );


        }
}
