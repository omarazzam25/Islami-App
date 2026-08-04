import 'package:flutter/material.dart';
import 'package:islami/core/routes/app_routes_name.dart';
import 'package:islami/core/them/app_color.dart';
import 'package:islami/modules/onboarding/fifth_screen.dart';
import 'package:islami/modules/onboarding/first_screen.dart';
import 'package:islami/modules/onboarding/fourth_screen.dart';
import 'package:islami/modules/onboarding/second_screen.dart';
import 'package:islami/modules/onboarding/third_screen.dart';
import 'package:islami/modules/onboarding/widget/custom_indicator.dart';



class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  final PageController _controller = PageController();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          Expanded(
            child: PageView(
              onPageChanged: (value) {
                index=value;
                setState(() {

                });
              },
              controller: _controller,
              children: [
                FirstScreen(),
                SecondScreen(),
                ThirdScreen(),
                FourthScreen(),
                FifthScreen(),
              ],
            ),
          ),

          Row(
            spacing: 5,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomIndicator(active: index == 0),
              CustomIndicator(active: index == 1),
              CustomIndicator(active: index == 2),
              CustomIndicator(active: index == 3),
              CustomIndicator(active: index == 4),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 GestureDetector(
                   onTap: (){
                     _controller.animateToPage(index - 1, duration: Duration(milliseconds: 250), curve: Curves.linear);

                   } ,
                   child: Text(index == 0 ? '' : 'Back',
                     style: TextStyle(
                       color: AppColor.primary,
                       fontFamily: "Janna",
                       fontSize: 16,
                       fontWeight: FontWeight.w700

                     ),

                   ),
                 ),
                GestureDetector(
                  onTap:(){
                    if(index == 4){
                      Navigator.pushReplacementNamed(context,AppRoutesName.layout);
                    }else{
                      _controller.animateToPage(index + 1, duration: Duration(milliseconds: 250), curve: Curves.linear);
                    }
                    } ,
                  child: Text(index == 4 ? 'Finish' : 'Next',
                    style: TextStyle(
                        color: AppColor.primary,
                        fontFamily: "Janna",
                        fontSize: 16,
                        fontWeight: FontWeight.w700
                  
                    ),
                  
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


