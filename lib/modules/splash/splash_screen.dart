import 'package:flutter/material.dart';
import 'package:islami/core/routes/app_routes_name.dart';

import '../../core/cache/cached_data.dart';
import '../../core/gen/assets.gen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    _checkOnboarding();

  }

  Future<void> _checkOnboarding() async {

    await Future.delayed(const Duration(seconds: 2));
    final completed =
    await CachedData.isOnboardingCompleted();

    if (!mounted) return;

    if (completed) {
      Navigator.pushReplacementNamed(context, AppRoutesName.layout);
    } else {
      Navigator.pushReplacementNamed(context, AppRoutesName.onboardScreen);
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Assets.images.splashImg.image(),
      ),
    );
  }
}
