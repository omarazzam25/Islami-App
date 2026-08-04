import 'package:flutter/material.dart';
import 'package:islami/core/them/app_color.dart';
import 'package:islami/modules/hadith/hadith_screen.dart';
import 'package:islami/modules/quran/quran_screen.dart';
import 'package:islami/modules/radio/radio_screen.dart';
import 'package:islami/modules/tasbeeh/tasbeeh_screen.dart';
import 'package:islami/modules/time/time_screen.dart';

import '../../core/gen/assets.gen.dart';

class LayoutScreen extends StatefulWidget {
   LayoutScreen({Key? key}) : super(key: key);

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int selectedIndex = 0;
  List<Widget> pages = [
    QuranScreen(),
    HadithScreen(),
    TasbeehScreen(),
    RadioScreen(),
    TimeScreen(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      extendBodyBehindAppBar: true,

      body: pages[selectedIndex],

     bottomNavigationBar: BottomNavigationBar(
      currentIndex: selectedIndex,
         onTap: (index){
          selectedIndex = index;
           setState(() {

           });
          },


         items:[

           BottomNavigationBarItem(label: 'Quran',icon:Assets.icons.quran.svg(width: 20,height: 20, color: AppColor.black),
             activeIcon: Container(
               padding: EdgeInsets.all(6),
               width: 59,
               height: 34,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(66),
                 color:AppColor.black.withValues(alpha: 0.6),
               ),
               child: Assets.icons.quran.svg(width: 20,height: 20, )), ),
           BottomNavigationBarItem(label: 'Hadith',icon:Assets.icons.iconSetFilled.svg(width: 20,height: 20, ),
             activeIcon:
             Container(
                 padding: EdgeInsets.all(6),
                 width: 59,
                 height: 34,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(66),
                   color:AppColor.black.withValues(alpha: 0.6),
                 ),

               child: Assets.icons.iconSetFilled.svg(width: 20,height: 20, color: AppColor.secondary)),),
           BottomNavigationBarItem(label: 'Tasbeeh',icon:Assets.icons.icSebha.svg(width: 20,height: 20, ),activeIcon: Container(
               padding: EdgeInsets.all(6),
               width: 59,
               height: 34,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(66),
                 color:AppColor.black.withValues(alpha: 0.6),
               ),
               child: Assets.icons.icSebha.svg(width: 20,height: 20, color: AppColor.secondary)),),
           BottomNavigationBarItem(label: 'Radio',icon:Assets.icons.icRadio.svg(width: 20,height: 20, ),activeIcon: Container(
               padding: EdgeInsets.all(6),
               width: 59,
               height: 34,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(66),
                 color:AppColor.black.withValues(alpha: 0.6),
               ),
               child: Assets.icons.icRadio.svg(width: 20,height: 20,  color: AppColor.secondary)),),
           BottomNavigationBarItem(label: 'Time',icon:Assets.icons.icTime.svg(width: 20,height: 20, ),  activeIcon: Container(
               padding: EdgeInsets.all(6),
               width: 59,
               height: 34,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(66),
                 color:AppColor.black.withValues(alpha: 0.6),
               ),
               child: Assets.icons.icTime.svg(width: 20,height: 20, color: AppColor.secondary)),),

               ]


     ),
    );
  }
}
