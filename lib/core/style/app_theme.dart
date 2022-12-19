import 'package:flutter/material.dart';

import 'color_palettes.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    fontFamily: 'DMSans',
    brightness: Brightness.light,
    primaryColor: ColorPalettes.primary,
    dividerColor: ColorPalettes.divider,
    primarySwatch: ColorPalettes.primarySwatch,
    scaffoldBackgroundColor: ColorPalettes.greyBackground,
  );
}
