import 'package:flutter/cupertino.dart';
import 'package:islami/modules/layout/layout_screen.dart';

import '../../modules/onboarding/onboard_screen.dart';

import '../../modules/quran/quran_deitels_screen.dart';
import '../../modules/splash/splash_screen.dart';
import 'app_routes_name.dart';

abstract class AppRoutes {
  static final Map<String, Widget Function(BuildContext)> routs = {
    AppRoutesName.initial: (context) => SplashScreen(),
    AppRoutesName.layout: (context) => LayoutScreen(),
    AppRoutesName.onboardScreen: (context) => OnboardScreen(),
     AppRoutesName.quranDeitels: (context) => QuranDeitelsScreen(),
  };
}
