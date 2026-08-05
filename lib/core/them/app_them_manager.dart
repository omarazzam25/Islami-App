import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/core/them/app_color.dart';

abstract class AppThemManager {
  static  ThemeData getThemData() => ThemeData(

    appBarTheme: const AppBarThemeData(
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w700,
        fontFamily: "Janna",
        fontSize: 20,
        color: AppColor.primary,
      ),
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
      elevation: 0,
        iconTheme: IconThemeData(
          color: AppColor.primary
        ),
        systemOverlayStyle:  SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark

      )
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColor.primary,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColor.secondary,
      unselectedItemColor: AppColor.black,
      showUnselectedLabels: false,
      selectedLabelStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w700,
        fontFamily: "Janna",
        color: AppColor.secondary,
      )
    ),
    primaryColor: AppColor.primary,
     scaffoldBackgroundColor: AppColor.black,
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        fontFamily: "Janna",
        color: AppColor.secondary,
        fontWeight: FontWeight.w700,
      ),
      headlineSmall: TextStyle(
        fontFamily: "Janna",
        fontWeight: FontWeight.w700,
        color: AppColor.black,
      ),
      bodyMedium: TextStyle(
        fontFamily: "Janna",
        fontWeight: FontWeight.w700,
        color: AppColor.black,
      ),
      titleLarge: TextStyle(
        fontFamily: "Janna",
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: AppColor.black,
      ),
    ),
  );
}
