import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// A utility class for loading images from various sources (SVG, local assets, remote URLs).
///
/// This class centralizes image loading logic, making it easy to display different
/// image types with consistent parameters and error handling.
class ImageLoader {
  /// Loads an SVG image from a local asset path.
  ///
  /// The [assetPath] is the path to the SVG file, for example, `'assets/icons/my_icon.svg'`.
  /// The [width] and [height] parameters specify the size of the image.
  /// The [color] parameter applies a color filter to the SVG image.
  /// The [fit] parameter determines how the image should be inscribed into the box.
  static Widget fromSvg(
    String assetPath, {
    double? width,
    double? height,
    Color? color,
    BoxFit fit = BoxFit.contain,
  }) {
    return SvgPicture.asset(
      assetPath,
      width: width,
      height: height,
      colorFilter: color != null
          ? ColorFilter.mode(color, BlendMode.srcIn)
          : null,
      fit: fit,
    );
  }

  /// Loads a raster image (e.g., PNG, JPEG) from a local asset path.
  ///
  /// The [assetPath] is the path to the image file, for example, `'assets/images/my_image.png'`.
  /// The [width] and [height] parameters specify the size of the image.
  /// The [fit] parameter determines how the image should be inscribed into the box.
  static Widget fromAssetImage(
    String assetPath, {
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
  }) {
    return Image.asset(assetPath, width: width, height: height, fit: fit);
  }

  /// Loads an image from a remote URL.
  ///
  /// This method uses the `cached_network_image` package to handle image caching,
  /// which improves performance and reduces data usage on subsequent loads.
  ///
  /// The [imageUrl] is the URL of the image to be displayed.
  /// The [width] and [height] parameters specify the size of the image.
  /// The [fit] parameter determines how the image should be inscribed into the box.
  /// It also includes a [placeholder] for the loading state and an [errorWidget]
  /// for handling image loading failures.
  static Widget fromRemote(
    String imageUrl, {
    double? width,
    double? height,
    BoxFit? fit,
    Widget Function(BuildContext context, String url) placeholder =
        _defaultPlaceholderBuilder,
    Widget Function(BuildContext context, String url, Object error)
        errorWidget =
        _defaultErrorWidgetBuilder,
  }) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      width: width,
      height: height,
      fit: fit,
      placeholder: placeholder,
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }

  static Widget _defaultPlaceholderBuilder(BuildContext context, String url) {
    return const Center(child: CircularProgressIndicator());
  }

  static Widget _defaultErrorWidgetBuilder(
    BuildContext context,
    String url,
    Object error,
  ) {
    return const Icon(Icons.error);
  }
}
