import 'package:flutter/material.dart';
import 'package:islami/models/sura_data_model.dart';

import '../../../core/gen/assets.gen.dart';
import '../../../core/them/app_color.dart';

class MostRecentCard extends StatelessWidget {
  const MostRecentCard({super.key, required this.suraDataModel});

  final SuraDataModel suraDataModel;

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
              Text(suraDataModel.suraNameEn, style: them.textTheme.headlineSmall),

              Text(suraDataModel.suraNameAr , style: them.textTheme.headlineSmall),

              Text("${suraDataModel.versesCount}", style: them.textTheme.titleLarge?.copyWith(fontSize: 14),)
            ],
          ),
          Assets.images.mostRecentImg.image(),
        ],
      ),

    );
  }
}
