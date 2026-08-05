import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:islami/core/routes/app_routes_name.dart';
import 'package:islami/models/sura_data_model.dart';
import 'package:islami/modules/quran/quran_screen.dart';
import '../../../core/gen/assets.gen.dart';

class CustomSuraItem extends StatelessWidget {
   CustomSuraItem({super.key, required this.suraDataModel, required this.onTap});
  final SuraDataModel suraDataModel;
  void Function()? onTap;


  @override
  Widget build(BuildContext context) {
    final them = Theme.of(context);
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(image: Assets.images.imgSurNumberFrame.provider())
            ),
            child: Text("${suraDataModel.suraNumber}", style: them.textTheme.titleLarge?.copyWith(color: Colors.white,fontSize: 15),),
          ),
          Gap(24),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(suraDataModel.suraNameEn, style: them.textTheme.titleLarge?.copyWith( color: Colors.white)),
              Gap(10),
              Text("${suraDataModel.versesCount} Verses", style: them.textTheme.titleLarge?.copyWith( color: Colors.white,fontSize: 14)),
            ],
          ),
          Spacer(),
          Text(suraDataModel.suraNameAr, style: them.textTheme.titleLarge?.copyWith( color: Colors.white)),
        ],
      ),
    );
  }
}
