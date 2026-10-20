// import 'package:audioplayers/audioplayers.dart';
// import 'package:flutter/material.dart';
//
//
// class RadioManagerProvider extends ChangeNotifier {
//   final player = AudioPlayer();
//   String? currentPlayingUrl;
//   bool isPlaying = false;
//   double currentVolume = 2;
//
//   Future<void> play(String url) async {
//     if (currentPlayingUrl == url) {
//       isPlaying ? await player.pause() : player.resume();
//       isPlaying = !isPlaying;
//     } else {
//       await player.stop();
//       currentPlayingUrl = url;
//       await player.play(UrlSource(url), volume: currentVolume);
//       isPlaying = true;
//       notifyListeners();
//     }
//
//   }
//
//   Future<void> stop() async {
//     await player.stop();
//     currentPlayingUrl = null;
//     isPlaying = false;
//     notifyListeners();
//   }
//
//   setVolume(double volume) async {
//     currentVolume = volume;
//     await player.setVolume(volume);
//     notifyListeners();
//   }
//
//
// }
//
//
//

import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class RadioManagerProvider extends ChangeNotifier {
  final AudioPlayer player = AudioPlayer();

  String? currentPlayingUrl;
  bool isPlaying = false;
  bool isLoading = false;

  double currentVolume = 1.0;

  Future<void> play(String url) async {
    try {

      if (currentPlayingUrl == url) {
        if (isPlaying) {
          await player.pause();
          isPlaying = false;
        } else {
          await player.resume();
          isPlaying = true;
        }

        notifyListeners();
        return;
      }


      isLoading = true;
      notifyListeners();

      await player.stop();

      currentPlayingUrl = url;

      await player.play(
        UrlSource(url),
        volume: currentVolume,
      );

      isPlaying = true;
    } on TimeoutException {
      debugPrint('Radio connection timeout');

      isPlaying = false;
      currentPlayingUrl = null;


      await player.stop();
    } catch (e) {
      debugPrint('Radio Error: $e');

      isPlaying = false;
      currentPlayingUrl = null;

      await player.stop();
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  Future<void> stop() async {
    await player.stop();

    currentPlayingUrl = null;
    isPlaying = false;
    isLoading = false;

    notifyListeners();
  }

  Future<void> setVolume(double volume) async {
    currentVolume = volume.clamp(0.0, 1.0);

    await player.setVolume(currentVolume);

    notifyListeners();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }
}
