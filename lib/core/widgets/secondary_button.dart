import 'package:flutter/material.dart';

import '../style/color_palettes.dart';
import '../style/sizes.dart';
import 'my_text.dart';

class SecondaryButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  final EdgeInsetsGeometry? margin;

  /// Corner radius default to 10
  final double? fontSize, width, height, radius;
  final double borderWidth;
  final FontWeight? fontWeight;

  const SecondaryButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.margin,
    this.fontSize,
    this.width,
    this.height,
    this.radius,
    this.borderWidth = 1,
    this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? Sizes.width218,
      height: height ?? Sizes.height56,
      margin: margin,
      child: OutlinedButton(
        onPressed: onPressed,
        child: MyText(
          text: text,
          textType: TextType.button,
          color: ColorPalettes.gold,
          fontSize: fontSize ?? Sizes.sp18,
          fontWeight: fontWeight,
        ),
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius ?? Sizes.radius10),
          ),
          side: BorderSide(
            width: borderWidth,
            color: ColorPalettes.gold,
          ),
          elevation: 0,
        ),
      ),
    );
  }
}
