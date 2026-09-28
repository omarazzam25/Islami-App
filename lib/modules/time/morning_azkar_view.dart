import 'package:flutter/material.dart';
import 'package:islami/core/them/app_color.dart';

import '../../models/azkar_model.dart';

class MorningAzkarView extends StatefulWidget {
  const MorningAzkarView({super.key});

  @override
  State<MorningAzkarView> createState() => _MorningAzkarViewState();
}

class _MorningAzkarViewState extends State<MorningAzkarView> {
  @override
  Widget build(BuildContext context) {
    final them = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Morning Azkar'),
        centerTitle: true,
      ),
      body: FutureBuilder(
          future: AzkarModel.loadAzkarModel('أذكار الصباح') ,
          builder: (context, snapshot) {
            if(snapshot.connectionState == ConnectionState.waiting ){
              return Center(child: CircularProgressIndicator(color: AppColor.primary,),);
            }
            else if(snapshot.hasError ){
              return Column(
                children: [
                  Text('Something Went Wrong'),
                  ElevatedButton(
                      onPressed: (){
                        AzkarModel.loadAzkarModel('أذكار الصباح');
                        setState(() {

                        });

                      },
                      child: Text('Try Again'))
                ],
              );
            }

            final data = snapshot.data!;
            return ListView.separated(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: AppColor.black,
                        border: Border.all(color: AppColor.primary,width: 2),
                      ),
                      child: Text(data[index].content!,textAlign: TextAlign.center, style: them.textTheme.titleLarge?.copyWith(color: AppColor.white),),
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(height: 10,),
                itemCount: data.length);

          },

      )
    );
  }
}


