/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Dark-Skies.webp
  AssetGenImage get darkSkies =>
      const AssetGenImage('assets/images/Dark-Skies.webp');

  /// File path: assets/images/alaarm.svg
  String get alaarm => 'assets/images/alaarm.svg';

  /// File path: assets/images/bed.svg
  String get bed => 'assets/images/bed.svg';

  /// File path: assets/images/blank_profile.svg
  String get blankProfile => 'assets/images/blank_profile.svg';

  /// File path: assets/images/home_header.png
  AssetGenImage get homeHeader =>
      const AssetGenImage('assets/images/home_header.png');

  /// File path: assets/images/image_bg_welcome.png
  AssetGenImage get imageBgWelcome =>
      const AssetGenImage('assets/images/image_bg_welcome.png');

  /// File path: assets/images/lognBG.jpeg
  AssetGenImage get lognBG => const AssetGenImage('assets/images/lognBG.jpeg');

  /// File path: assets/images/page_not_found.png
  AssetGenImage get pageNotFound =>
      const AssetGenImage('assets/images/page_not_found.png');

  /// File path: assets/images/register_logo.jpeg
  AssetGenImage get registerLogo =>
      const AssetGenImage('assets/images/register_logo.jpeg');

  /// File path: assets/images/sleep_bed_moon_asleep_sleeping.svg
  String get sleepBedMoonAsleepSleeping =>
      'assets/images/sleep_bed_moon_asleep_sleeping.svg';

  /// File path: assets/images/sun.svg
  String get sun => 'assets/images/sun.svg';

  /// List of all assets
  List<dynamic> get values => [
        darkSkies,
        alaarm,
        bed,
        blankProfile,
        homeHeader,
        imageBgWelcome,
        lognBG,
        pageNotFound,
        registerLogo,
        sleepBedMoonAsleepSleeping,
        sun
      ];
}

class $AssetsSoundGen {
  const $AssetsSoundGen();

  /// File path: assets/sound/alarm_sound.wav
  String get alarmSound => 'assets/sound/alarm_sound.wav';

  /// List of all assets
  List<String> get values => [alarmSound];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsSoundGen sound = $AssetsSoundGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
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

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
