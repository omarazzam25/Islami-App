import 'package:flutter/material.dart';
import 'package:islami/core/routes/app_routes_name.dart';
import 'package:islami/core/them/app_color.dart';
import 'package:islami/modules/onboarding/fifth_screen.dart';
import 'package:islami/modules/onboarding/first_screen.dart';
import 'package:islami/modules/onboarding/fourth_screen.dart';
import 'package:islami/modules/onboarding/second_screen.dart';
import 'package:islami/modules/onboarding/third_screen.dart';
import 'package:islami/modules/onboarding/widget/custom_indicator.dart';

import '../../core/cache/cached_data.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  final PageController _controller = PageController();

  int index = 0;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    final horizontalPadding = size.width * 0.05;
    final bottomPadding = size.height * 0.02;

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _controller,
                onPageChanged: (value) {
                  setState(() {
                    index = value;
                  });
                },
                children: const [
                  FirstScreen(),
                  SecondScreen(),
                  ThirdScreen(),
                  FourthScreen(),
                  FifthScreen(),
                ],
              ),
            ),

            // Page Indicators
            Padding(
              padding: EdgeInsets.only(bottom: size.height * 0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  5,
                  (itemIndex) => Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.008,
                    ),
                    child: CustomIndicator(active: index == itemIndex),
                  ),
                ),
              ),
            ),

            // Navigation Buttons
            Padding(
              padding: EdgeInsets.fromLTRB(
                horizontalPadding,
                0,
                horizontalPadding,
                bottomPadding,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: index == 0
                        ? null
                        : () {
                            _controller.previousPage(
                              duration: const Duration(milliseconds: 250),
                              curve: Curves.easeInOut,
                            );
                          },
                    child: Text(
                      index == 0 ? '' : 'Back',
                      style: TextStyle(
                        color: AppColor.primary,
                        fontFamily: 'Janna',
                        fontSize: size.width * 0.04,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: () async {
                      if (index == 4) {
                        await CachedData.completeOnboarding();

                        if (!context.mounted) return;

                        Navigator.pushReplacementNamed(
                          context,
                          AppRoutesName.layout,
                        );
                      } else {
                        _controller.nextPage(
                          duration: const Duration(milliseconds: 250),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                    child: Text(
                      index == 4 ? 'Finish' : 'Next',
                      style: TextStyle(
                        color: AppColor.primary,
                        fontFamily: 'Janna',
                        fontSize: size.width * 0.04,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
