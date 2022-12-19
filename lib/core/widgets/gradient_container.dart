import 'package:flutter/material.dart';

import '../style/color_palettes.dart';

class GradientContainer extends StatelessWidget {
  final Widget child;
  final double? height, width;

  const GradientContainer({
    Key? key,
    required this.child,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            ColorPalettes.gold,
            ColorPalettes.goldDark,
          ],
        ),
      ),
      child: child,
    );
  }
}
