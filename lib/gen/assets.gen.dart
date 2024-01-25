/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class Assets {
  Assets._();

  static const AssetGenImage asdf = AssetGenImage('assets/asdf.png');
  static const AssetGenImage astro = AssetGenImage('assets/astro.png');
  static const AssetGenImage bff = AssetGenImage('assets/bff.png');
  static const AssetGenImage dartDownloadUrls =
      AssetGenImage('assets/dart-download-urls.png');
  static const AssetGenImage dartGetList =
      AssetGenImage('assets/dart-get-list.png');
  static const AssetGenImage dart3 = AssetGenImage('assets/dart3.png');
  static const AssetGenImage docusaurus =
      AssetGenImage('assets/docusaurus.png');
  static const AssetGenImage dvmHomebrew =
      AssetGenImage('assets/dvm-homebrew.png');
  static const AssetGenImage dvmPubDev =
      AssetGenImage('assets/dvm-pub-dev.png');
  static const AssetGenImage feelDepressed =
      AssetGenImage('assets/feel-depressed.png');
  static const AssetGenImage fvm = AssetGenImage('assets/fvm.png');
  static const AssetGenImage githubProject =
      AssetGenImage('assets/github-project.png');
  static const AssetGenImage homebrew = AssetGenImage('assets/homebrew.png');
  static const AssetGenImage logo = AssetGenImage('assets/logo.png');
  static const AssetGenImage pubDev = AssetGenImage('assets/pub-dev.png');
  static const AssetGenImage speaker = AssetGenImage('assets/speaker.png');
  static const AssetGenImage spiceAndWolf =
      AssetGenImage('assets/spice-and-wolf.png');
  static const AssetGenImage structure = AssetGenImage('assets/structure.png');

  /// List of all assets
  static List<AssetGenImage> get values => [
        asdf,
        astro,
        bff,
        dartDownloadUrls,
        dartGetList,
        dart3,
        docusaurus,
        dvmHomebrew,
        dvmPubDev,
        feelDepressed,
        fvm,
        githubProject,
        homebrew,
        logo,
        pubDev,
        speaker,
        spiceAndWolf,
        structure
      ];
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
