import 'dart:async';


import 'package:flutter/material.dart';
import 'package:islami/core/them/app_color.dart';

class NextPrayerTimer extends StatefulWidget {
  const NextPrayerTimer({super.key, required this.timeRemaining});
  final Duration timeRemaining ;

  @override
  State<NextPrayerTimer> createState() => _NextPrayerTimerState();
}

class _NextPrayerTimerState extends State<NextPrayerTimer> {

  late Timer timer;
  late Duration _timeRemaining;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _timeRemaining = widget.timeRemaining;
    timer = Timer.periodic(Duration(seconds: 1), (timer){
      setState(() {
        if(_timeRemaining.inSeconds > 0 ){
          _timeRemaining = _timeRemaining - Duration(seconds: 1);
        }else{
          timer.cancel();
        }

      });

    });

  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    timer.cancel();
  }

  String _formateDuration(Duration timeRemaining ){
  String hours = timeRemaining.inHours.toString().padLeft(2,'0');
  String minutes = timeRemaining.inMinutes.remainder(60).toString().padLeft(2,'0');
  String seconds = timeRemaining.inSeconds.remainder(60).toString().padLeft(2,'0');


  return '$hours:$minutes:$seconds';

  }


  @override
  Widget build(BuildContext context) {
    final them = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Next Pray - ',style: them.textTheme.bodyLarge?.copyWith(color: AppColor.black.withValues(alpha: 0.75)),),
        Text(_formateDuration(_timeRemaining),style: them.textTheme.bodyLarge?.copyWith(color: AppColor.black)),
      ],
    );
  }
}
