import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:islami/core/api/api_manager.dart';
import 'package:islami/models/radio_response_model.dart';
import 'package:islami/modules/radio/widgets/radio_card_item.dart';

import '../../core/gen/assets.gen.dart';
import '../../core/them/app_color.dart';
import '../../models/reciters_response_model.dart';

class RadioScreen extends StatefulWidget {
  const RadioScreen({super.key});

  @override
  State<RadioScreen> createState() => _RadioScreenState();
}

class _RadioScreenState extends State<RadioScreen> {
  @override
  Widget build(BuildContext context) {
    final them = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Assets.images.radioBackground.provider(),
          fit: BoxFit.cover,
        ),
      ),
      child: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70.0, vertical: 20),
              child: Assets.images.headerImg.image(),
            ),
            Gap(7),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child:  Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppColor.black.withValues(alpha: 0.7),
                  ),
                  child: TabBar(
                    labelStyle: them.textTheme.bodyLarge?.copyWith(color: AppColor.black),
                    unselectedLabelStyle:them.textTheme.bodyLarge?.copyWith(color: AppColor.secondary,fontWeight: FontWeight.w400),
                    indicatorSize: TabBarIndicatorSize.tab,
                    dividerHeight: 0,
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColor.primary,
                    ),

                    tabs: [
                      Tab(child: Text('Radio')),
                      Tab(child: Text('Reciters')),
                    ],
                  ),
                ),
              ),


    Expanded(
      child: TabBarView(
                  children:[
                    FutureBuilder(
                        future: ApiManager.getRadioData(),
                        builder: (context, snapshot) {
                          if(snapshot.connectionState == ConnectionState.waiting){
                            return Center(
                              child: CircularProgressIndicator(
                                                        color: AppColor.primary,
                              ),
                            );
                          }
                          else if(snapshot.hasError ){
                            return Column(
                              children: [
                                Text('Something Went Wrong'),
                                ElevatedButton(onPressed: (){
                                  ApiManager.getRadioData();
                                  setState(() {

                                  });

                                },
                                    child: Text('Trey Again'))
                              ],
                            );
                          }
                          RadioResponseModel radio = snapshot.data!;
                          return  ListView.separated(
                             padding: EdgeInsets.symmetric(vertical: 12),
                             itemBuilder: (context, index) {
                               return RadioCardItem(
                                 name: radio.radios?[index].name ?? 'Not Found',
                                 url: radio.radios?[index].url ?? '',

                               );
                             },
                             separatorBuilder: (context, index) {
                               return SizedBox(height: 12);
                             },
                             itemCount: radio.radios!.length,
                           );





                        },
                    ),
                    FutureBuilder(
                        future: ApiManager.getRecitersData(),
                        builder: (context, snapshot) {
                          if(snapshot.connectionState == ConnectionState.waiting){
                            return Center(
                              child: CircularProgressIndicator(
                                                        color: AppColor.primary,
                              ),
                            );
                          }
                          else if(snapshot.hasError ){
                            return Column(
                              children: [
                                Text('Something Went Wrong'),
                                ElevatedButton(onPressed: (){
                                  ApiManager.getRecitersData();
                                  setState(() {

                                  });

                                },
                                    child: Text('Trey Again'))
                              ],
                            );
                          }
                          RecitersResponseModel reciters = snapshot.data!;
                          return  ListView.separated(
                             padding: EdgeInsets.symmetric(vertical: 12),
                             itemBuilder: (context, index) {
                               return RadioCardItem(
                                 name: reciters.reciters?[index].name ?? 'Not Found',
                                 url: "${reciters.reciters?[index].moshaf?[0].server}002.mp3",
                                 // next: Icon(Icons.skip_next,size: 40,),

                               );
                             },
                             separatorBuilder: (context, index) {
                               return SizedBox(height: 12);
                             },
                             itemCount: reciters.reciters!.length,
                           );

                          },
                    ),

                  ]
              ),
    ),



          ],

      ),

      )
    );
  }
}
