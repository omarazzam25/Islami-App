import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:islami/core/them/app_color.dart';

import '../../../core/gen/assets.gen.dart';

class RadioCardItem extends StatelessWidget {
  const RadioCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    final them = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        height: 133,
        width: .infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
              color: AppColor.primary,
          image: DecorationImage(image: AssetImage(Assets.images.mosqueCardRadio.path,),colorFilter:ColorFilter.mode(AppColor.black.withValues(alpha: 0.2), BlendMode.srcIn) ,fit: BoxFit.cover)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 13.0),
          child: Column(
            children: [
              Text('Radio Ibrahim Al-Akader', style: them.textTheme.titleLarge,),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Assets.icons.playRadioIcon.svg(),
                  Gap(20),
                  Assets.icons.volumeHigh.svg(),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
