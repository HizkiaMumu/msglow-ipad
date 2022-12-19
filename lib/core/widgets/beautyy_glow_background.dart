import 'package:flutter/material.dart';

import '../constants/image_asset.dart';

class BeautyyGlowBackground extends StatelessWidget {
  const BeautyyGlowBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Image.asset(
          ImageAsset.bgBeautyyGlow,
          height: constraints.maxHeight,
          width: constraints.maxWidth,
          fit: BoxFit.cover,
        );
      },
    );
  }
}
