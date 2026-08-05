import 'package:flutter/material.dart';
import 'package:islami/models/sura_data_model.dart';

import '../../../core/gen/assets.gen.dart';
import '../../../core/them/app_color.dart';

class QuranDetailsBackground extends StatelessWidget {
  const QuranDetailsBackground({super.key, required this.suraDataModel});

  final SuraDataModel suraDataModel;



  @override
  Widget build(BuildContext context) {
    final them= Theme.of(context);
    return  Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Assets.images.imgLeftCorner.image(width: 90, height: 90),
            Text(suraDataModel.suraNameAr,style: them.textTheme.titleLarge?.copyWith(color: AppColor.primary),),
            Assets.images.imgRightCorner.image(width:  90 , height: 90),
          ],
        ),
        Spacer(),
        Assets.images.imgBottomDecoration.image(),
      ],
    );
  }
}
