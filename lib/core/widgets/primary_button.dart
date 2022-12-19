import 'package:flutter/material.dart';

import '../style/color_palettes.dart';
import '../style/sizes.dart';
import 'my_text.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final double? fontSize, width, height;
  final FontWeight? fontWeight;
  final Color? color;

  const PrimaryButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.padding,
    this.fontSize,
    this.width,
    this.height,
    this.fontWeight,
    this.margin,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? Sizes.width218,
      height: height ?? Sizes.height56,
      padding: padding ?? EdgeInsets.zero,
      margin: margin ?? EdgeInsets.zero,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Ink(
          width: width ?? Sizes.width218,
          height: height ?? Sizes.height56,
          decoration: BoxDecoration(
            color: color,
            gradient: color == null
                ? const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      ColorPalettes.gold,
                      ColorPalettes.goldDark,
                    ],
                  )
                : null,
            borderRadius: BorderRadius.circular(Sizes.radius10),
          ),
          child: MyText(
            text: text,
            textType: TextType.button,
            color: Colors.white,
            fontSize: fontSize ?? Sizes.sp18,
            fontWeight: fontWeight ?? FontWeight.w500,
            alignment: Alignment.center,
          ),
        ),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Sizes.radius10),
          ),
          padding: EdgeInsets.zero,
          elevation: 0,
        ),
      ),
    );
  }
}
