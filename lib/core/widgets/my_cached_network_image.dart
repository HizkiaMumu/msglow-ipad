import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../style/color_palettes.dart';

class MyCachedNetworkImage extends StatelessWidget {
  final String? imageUrl;
  final BoxFit? fit;
  final double? width, height;
  final Color? progressColor;
  final bool errorWithText;
  final Widget? errorWidget;

  const MyCachedNetworkImage({
    Key? key,
    required this.imageUrl,
    this.fit = BoxFit.cover,
    this.width,
    this.height,
    this.progressColor,
    this.errorWithText = false,
    this.errorWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool _validURL = Uri.tryParse(imageUrl ?? '')?.hasAbsolutePath ?? false;

    return CachedNetworkImage(
      imageUrl: _validURL ? imageUrl! : 'https://via.placeholder.com/150',
      fit: fit,
      width: width,
      height: height,
      progressIndicatorBuilder: (context, url, downloadProgress) => SizedBox(
        height: height,
        width: height,
        child: Center(
          child: CircularProgressIndicator(
            value: downloadProgress.progress,
            color: progressColor,
          ),
        ),
      ),
      errorWidget: (context, url, error) {
        if (errorWidget == null) {
          return Icon(
            Icons.error,
            color: ColorPalettes.grey,
            size: height,
          );
        }
        return errorWidget!;
      },
    );
  }
}
