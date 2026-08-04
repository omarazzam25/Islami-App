import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:islami/core/them/app_color.dart';
import 'package:islami/core/widgets/custom_text_form_field.dart';
import 'package:islami/modules/quran/widgets/custom_sura_item.dart';
import 'package:islami/modules/quran/widgets/most_recent_card.dart';

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
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Assets.images.headerImg.image(),
            Gap(21),
            CustomTextFormField(),
            Gap(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text('Most Recently',style: them.textTheme.bodyLarge?.copyWith(fontSize: 16),
              ),
            ),
            Gap(10),
            SizedBox(
              height: 150,
              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 20),
                scrollDirection: Axis.horizontal,
                  itemBuilder:
                  (context, index) {
                    return MostRecentCard();
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 10,);
                    },
                  itemCount: 5
              ),
            ),
            Gap(10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text('Sura Name',style: them.textTheme.bodyLarge?.copyWith(fontSize: 16),
              ),
            ),
            Gap(10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.all(0),
                  itemBuilder: (context, index) {
                    return CustomSuraItem();
                  },
                  separatorBuilder: (context, index) {
                    return Divider(endIndent: 44, indent: 44,);

                  },
                  itemCount: 100
              ),
            )


          ],
        ),
      ),
    );


        }
}
