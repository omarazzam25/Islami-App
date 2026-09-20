import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/models/hadith_data_model.dart';

import 'package:islami/modules/hadith/widgets/hadith_item_view.dart';

import '../../core/gen/assets.gen.dart';

class HadithScreen extends StatefulWidget {
  const HadithScreen({super.key});

  @override
  State<HadithScreen> createState() => _HadithScreenState();
}

class _HadithScreenState extends State<HadithScreen> {

  @override
  void initState() {
    super.initState();
    loadHadithData();
  }
  @override
  Widget build(BuildContext context) {

    final mediaQuery = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Assets.images.hadithBackground.provider(),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70.0, vertical: 30),
            child: Assets.images.headerImg.image(),
          ),
          CarouselSlider(
            items:
             _hadithDataList.map((hadithDataModel) => HadithItemView(hadithDataModel: hadithDataModel ,),).toList(),
            options: CarouselOptions(
              height: mediaQuery.height * 0.65,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: false,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              // onPageChanged: callbackFunction,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
final List<HadithDataModel> _hadithDataList = [];

  void loadHadithData() async{

    for(int i = 1 ; i<=50 ;i++  ){
      final content = await rootBundle.loadString('assets/files/hadith/h$i.txt');

      final int titleLength = content.indexOf("\n");

      final String hadithTitle = content.substring(0,titleLength);
      final String hadithContent = content.substring(titleLength+1);


      final HadithDataModel hadithDataModel = HadithDataModel(hadithTitle: hadithTitle, hadithContent: hadithContent);
      _hadithDataList.add(hadithDataModel);
    }
    setState(() {

    });

  }

}
