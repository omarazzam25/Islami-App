import 'package:flutter/material.dart';
import '../../core/gen/assets.gen.dart';

class TimeScreen extends StatelessWidget {
  const TimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: Assets.images.timeBackground.provider(), fit: BoxFit.cover),
      ),
    );
  }
}
