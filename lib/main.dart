import 'package:flutter/material.dart';
import 'package:islami/core/routes/app_routes.dart';
import 'package:islami/core/settings/provider/radio_manager_provider.dart';
import 'package:islami/core/them/app_them_manager.dart';
import 'package:provider/provider.dart';




void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ChangeNotifierProvider(create:(context) => RadioManagerProvider() , child: const MyApp()));
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
