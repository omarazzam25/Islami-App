import 'package:flutter/material.dart';
import 'package:islami/core/routes/app_routes_name.dart';

import '../../../core/gen/assets.gen.dart';
import '../../../core/them/app_color.dart';

class EveningAzkarWidget extends StatelessWidget {
  const EveningAzkarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final them = Theme.of(context);
    final size = MediaQuery
        .of(context)
        .size;
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, AppRoutesName.eveningAzkarView);
      },
      child: Container(
        width: size.width * 0.45 ,
        height: size.height * 0.27,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColor.black,
          border: Border.all(color: AppColor.primary),

        ),
        child: Column(
          children: [
            Assets.images.eveningAzkarImg.image(fit: BoxFit.cover,width: 185,height: 185),
            Text('Evening Azkar',style: them.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700,color: AppColor.white)),
          ],
        ),
      ),
    );
  }
}
