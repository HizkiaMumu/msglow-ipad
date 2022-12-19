import 'package:flutter/material.dart';

import '../utils/theme_util.dart';

enum TextType {
  headline1,
  headline2,
  headline3,
  headline4,
  headline5,
  headline6,
  subtitle1,
  subtitle2,
  bodyText1,
  bodyText2,
  caption,
  button,
  overline,
}

extension TextTypeExtension on TextType {
  TextStyle? get style {
    switch (this) {
      case TextType.headline1:
        return ThemeUtil.headline1;
      case TextType.headline2:
        return ThemeUtil.headline2;
      case TextType.headline3:
        return ThemeUtil.headline3;
      case TextType.headline4:
        return ThemeUtil.headline4;
      case TextType.headline5:
        return ThemeUtil.headline5;
      case TextType.headline6:
        return ThemeUtil.headline6;
      case TextType.subtitle1:
        return ThemeUtil.subtitle1;
      case TextType.subtitle2:
        return ThemeUtil.subtitle2;
      case TextType.bodyText1:
        return ThemeUtil.bodyText1;
      case TextType.bodyText2:
        return ThemeUtil.bodyText2;
      case TextType.caption:
        return ThemeUtil.caption;
      case TextType.button:
        return ThemeUtil.button;
      case TextType.overline:
        return ThemeUtil.overline;
      default:
        return null;
    }
  }
}

class MyText extends StatelessWidget {
  final String text;
  final TextType textType;
  final TextAlign? textAlign;
  final Color? color;
  final Function()? onTap;
  final double? height, fontSize, width;
  final int? maxLines;
  final TextOverflow? overflow;
  final FontWeight? fontWeight;
  final double? lineHeight;
  final EdgeInsetsGeometry? margin;
  final AlignmentGeometry? alignment;
  final TextDecoration? decoration;

  const MyText({
    Key? key,
    required this.text,
    this.textAlign,
    this.color,
    this.textType = TextType.bodyText2,
    this.onTap,
    this.height,
    this.maxLines,
    this.fontSize,
    this.overflow,
    this.fontWeight,
    this.lineHeight,
    this.margin,
    this.width,
    this.alignment,
    this.decoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        alignment: alignment,
        margin: margin,
        child: Text(
          text,
          style: textType.style?.copyWith(
            color: color,
            fontSize: fontSize,
            fontWeight: fontWeight,
            height: lineHeight,
            decoration: decoration,
            decorationColor: Colors.red,
            decorationStyle: TextDecorationStyle.double,
          ),
          overflow: overflow,
          maxLines: maxLines,
          textAlign: textAlign,
        ),
      ),
    );
  }
}
