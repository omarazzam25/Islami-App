import 'package:flutter/material.dart';
import 'package:islami/core/them/app_color.dart';
import 'package:islami/models/hadith_data_model.dart';

class HadithContentView extends StatelessWidget {
  const HadithContentView({super.key, required this.hadithDataModel});
  final HadithDataModel hadithDataModel;

  @override
  Widget build(BuildContext context) {
    final them = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(
          top: 40,
        bottom: 30,
        left: 24,
        right: 24
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text( hadithDataModel.hadithTitle, textAlign: TextAlign.center, style:them.textTheme.headlineSmall ,),
            SizedBox(height: 10,),
            Text(hadithDataModel.hadithContent , textAlign: TextAlign.center, style:them.textTheme.bodyLarge?.copyWith(color: AppColor.black) ,),

          ],
        ),
      ),
    );
  }
}
