import 'package:flutter/material.dart';
import 'package:islami/core/routes/app_routes.dart';
import 'package:islami/core/them/app_them_manager.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemManager.getThemData(),
      debugShowCheckedModeBanner: false,
      routes: AppRoutes.routs,
    );
  }
}
