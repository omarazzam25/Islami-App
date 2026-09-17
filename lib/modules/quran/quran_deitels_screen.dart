import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/core/them/app_color.dart';
import 'package:islami/models/sura_data_model.dart';
import 'package:islami/modules/quran/widgets/quran_details_background.dart';


class QuranDeitelsScreen extends StatefulWidget {
   const QuranDeitelsScreen({super.key, });

  @override
  State<QuranDeitelsScreen> createState() => _QuranDeitelsScreenState();
}

class _QuranDeitelsScreenState extends State<QuranDeitelsScreen> {
  @override
  Widget build(BuildContext context) {
    final them = Theme.of(context);
    final suraDataModel =  ModalRoute.of(context)?.settings.arguments as SuraDataModel;
    if(verses.isEmpty ) loadDataFromFile(suraDataModel.suraNumber);
    return Scaffold(

      appBar: AppBar(
        title: Text(suraDataModel.suraNameEn),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Stack(
          children: [
           QuranDetailsBackground(suraDataModel: suraDataModel),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 75.0),
              child: ListView.builder(
                itemCount: verses.length,
                itemBuilder: (context, index) {
                return Text("${[index + 1]} ${verses[index]}",textAlign: TextAlign.center, style: them.textTheme.titleLarge?.copyWith(color: AppColor.primary,height: 1.6) , );
              },),
            )

          ],
        ),
      )
    ) ;
  }

  List<String> verses = [];

  Future<void> loadDataFromFile(int suraIndex)async {

    String content = await rootBundle.loadString('assets/files/quran/${suraIndex}.txt');
   verses = content.split("\n");
   setState(() {

   });




  }
}
