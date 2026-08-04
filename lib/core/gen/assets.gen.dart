// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/Icon-Set-Filled.svg
  SvgGenImage get iconSetFilled =>
      const SvgGenImage('assets/icons/Icon-Set-Filled.svg');

  /// File path: assets/icons/ic_radio.svg
  SvgGenImage get icRadio => const SvgGenImage('assets/icons/ic_radio.svg');

  /// File path: assets/icons/ic_sebha.svg
  SvgGenImage get icSebha => const SvgGenImage('assets/icons/ic_sebha.svg');

  /// File path: assets/icons/ic_time.svg
  SvgGenImage get icTime => const SvgGenImage('assets/icons/ic_time.svg');

  /// File path: assets/icons/pause_icon.svg
  SvgGenImage get pauseIcon => const SvgGenImage('assets/icons/pause_icon.svg');

  /// File path: assets/icons/play_radio_icon.svg
  SvgGenImage get playRadioIcon =>
      const SvgGenImage('assets/icons/play_radio_icon.svg');

  /// File path: assets/icons/quran.svg
  SvgGenImage get quran => const SvgGenImage('assets/icons/quran.svg');

  /// File path: assets/icons/volume_high.svg
  SvgGenImage get volumeHigh =>
      const SvgGenImage('assets/icons/volume_high.svg');

  /// File path: assets/icons/volume_mute.svg
  SvgGenImage get volumeMute =>
      const SvgGenImage('assets/icons/volume_mute.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
    iconSetFilled,
    icRadio,
    icSebha,
    icTime,
    pauseIcon,
    playRadioIcon,
    quran,
    volumeHigh,
    volumeMute,
  ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/bearish_img.png
  AssetGenImage get bearishImg =>
      const AssetGenImage('assets/images/bearish_img.png');

  /// File path: assets/images/hadith_background.png
  AssetGenImage get hadithBackground =>
      const AssetGenImage('assets/images/hadith_background.png');

  /// File path: assets/images/header_img.png
  AssetGenImage get headerImg =>
      const AssetGenImage('assets/images/header_img.png');

  /// File path: assets/images/img_sur_number_frame.png
  AssetGenImage get imgSurNumberFrame =>
      const AssetGenImage('assets/images/img_sur_number_frame.png');

  /// File path: assets/images/mosque_card_radio.png
  AssetGenImage get mosqueCardRadio =>
      const AssetGenImage('assets/images/mosque_card_radio.png');

  /// File path: assets/images/mosque_img.png
  AssetGenImage get mosqueImg =>
      const AssetGenImage('assets/images/mosque_img.png');

  /// File path: assets/images/most_recent_img.png
  AssetGenImage get mostRecentImg =>
      const AssetGenImage('assets/images/most_recent_img.png');

  /// File path: assets/images/quran_Background.png
  AssetGenImage get quranBackground =>
      const AssetGenImage('assets/images/quran_Background.png');

  /// File path: assets/images/quran_img.png
  AssetGenImage get quranImg =>
      const AssetGenImage('assets/images/quran_img.png');

  /// File path: assets/images/radio_Background.png
  AssetGenImage get radioBackground =>
      const AssetGenImage('assets/images/radio_Background.png');

  /// File path: assets/images/radio_img.png
  AssetGenImage get radioImg =>
      const AssetGenImage('assets/images/radio_img.png');

  /// File path: assets/images/sebha_background.png
  AssetGenImage get sebhaBackground =>
      const AssetGenImage('assets/images/sebha_background.png');

  /// File path: assets/images/sebha_edit.png
  AssetGenImage get sebhaEdit =>
      const AssetGenImage('assets/images/sebha_edit.png');

  /// File path: assets/images/splash_img.png
  AssetGenImage get splashImg =>
      const AssetGenImage('assets/images/splash_img.png');

  /// File path: assets/images/time_Background.png
  AssetGenImage get timeBackground =>
      const AssetGenImage('assets/images/time_Background.png');

  /// File path: assets/images/welcome_img.png
  AssetGenImage get welcomeImg =>
      const AssetGenImage('assets/images/welcome_img.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    bearishImg,
    hadithBackground,
    headerImg,
    imgSurNumberFrame,
    mosqueCardRadio,
    mosqueImg,
    mostRecentImg,
    quranBackground,
    quranImg,
    radioBackground,
    radioImg,
    sebhaBackground,
    sebhaEdit,
    splashImg,
    timeBackground,
    welcomeImg,
  ];
}

abstract final class Assets {
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}

class SvgGenImage {
  const SvgGenImage(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = false;

  const SvgGenImage.vec(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    _svg.ColorMapper? colorMapper,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
        colorMapper: colorMapper,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter:
          colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
