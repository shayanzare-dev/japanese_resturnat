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

  /// File path: assets/images/empty_cart.png
  AssetGenImage get emptyCart =>
      const AssetGenImage('assets/images/empty_cart.png');

  /// File path: assets/images/empty_favorite.png
  AssetGenImage get emptyFavorite =>
      const AssetGenImage('assets/images/empty_favorite.png');

  /// File path: assets/images/github_pic.png
  AssetGenImage get githubPic =>
      const AssetGenImage('assets/images/github_pic.png');

  /// File path: assets/images/profile_pic.png
  AssetGenImage get profilePic =>
      const AssetGenImage('assets/images/profile_pic.png');

  /// File path: assets/images/sushi1.png
  AssetGenImage get sushi1 => const AssetGenImage('assets/images/sushi1.png');

  /// File path: assets/images/sushi10.png
  AssetGenImage get sushi10 => const AssetGenImage('assets/images/sushi10.png');

  /// File path: assets/images/sushi11.png
  AssetGenImage get sushi11 => const AssetGenImage('assets/images/sushi11.png');

  /// File path: assets/images/sushi12.png
  AssetGenImage get sushi12 => const AssetGenImage('assets/images/sushi12.png');

  /// File path: assets/images/sushi2.png
  AssetGenImage get sushi2 => const AssetGenImage('assets/images/sushi2.png');

  /// File path: assets/images/sushi3.png
  AssetGenImage get sushi3 => const AssetGenImage('assets/images/sushi3.png');

  /// File path: assets/images/sushi4.png
  AssetGenImage get sushi4 => const AssetGenImage('assets/images/sushi4.png');

  /// File path: assets/images/sushi5.png
  AssetGenImage get sushi5 => const AssetGenImage('assets/images/sushi5.png');

  /// File path: assets/images/sushi6.png
  AssetGenImage get sushi6 => const AssetGenImage('assets/images/sushi6.png');

  /// File path: assets/images/sushi7.png
  AssetGenImage get sushi7 => const AssetGenImage('assets/images/sushi7.png');

  /// File path: assets/images/sushi8.png
  AssetGenImage get sushi8 => const AssetGenImage('assets/images/sushi8.png');

  /// File path: assets/images/sushi9.png
  AssetGenImage get sushi9 => const AssetGenImage('assets/images/sushi9.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        emptyCart,
        emptyFavorite,
        githubPic,
        profilePic,
        sushi1,
        sushi10,
        sushi11,
        sushi12,
        sushi2,
        sushi3,
        sushi4,
        sushi5,
        sushi6,
        sushi7,
        sushi8,
        sushi9
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
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
    bool gaplessPlayback = true,
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
