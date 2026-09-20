import 'package:flutter/material.dart';
import 'package:islami/models/hadith_data_model.dart';

import '../../../core/gen/assets.gen.dart';
import '../../../core/them/app_color.dart';
import 'hadith_backgroung.dart';
import 'hadith_content_view.dart';

class HadithItemView extends StatelessWidget {
  const HadithItemView({super.key, required this.hadithDataModel});
  final HadithDataModel hadithDataModel;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Container(
      height: mediaQuery.height * 0.65,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.primary,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: Assets.images.hadithCardBackGround.provider(),
        ),
      ),
      child: Stack(
        children: [
          HadithBackground(),
          HadithContentView( hadithDataModel: hadithDataModel,)
        ],
      ),
    );
  }
}
