import 'package:flutter/material.dart';

import '../../core/them/app_color.dart';
import '../../models/azkar_model.dart';

class EveningAzkarView extends StatefulWidget {
  const EveningAzkarView({super.key});

  @override
  State<EveningAzkarView> createState() => _EveningAzkarViewState();
}

class _EveningAzkarViewState extends State<EveningAzkarView> {
  @override
  Widget build(BuildContext context) {
    final them = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Evening Azkar'),
        centerTitle: true,
      ),
      body:FutureBuilder(
        future: AzkarModel.loadAzkarModel('أذكار المساء') ,
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
                      AzkarModel.loadAzkarModel('أذكار المساء');
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
                    child: Text(data[index].content!,textAlign: TextAlign.center, style:them.textTheme.titleLarge?.copyWith(color: AppColor.white,height: 1.5),),
                  ),
                );
              },
              separatorBuilder: (context, index) => SizedBox(height: 5,),
              itemCount: data.length);

        },

      ) ,

    );
  }
}
