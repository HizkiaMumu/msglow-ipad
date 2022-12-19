import 'package:flutter/material.dart';

import 'get_util.dart';

class ThemeUtil {
  const ThemeUtil._();

// #region Text themes
  static TextStyle? get headline1 =>
      Theme.of(GetUtil.context).textTheme.headline1;

  static TextStyle? get headline2 =>
      Theme.of(GetUtil.context).textTheme.headline2;

  static TextStyle? get headline3 =>
      Theme.of(GetUtil.context).textTheme.headline3;

  static TextStyle? get headline4 =>
      Theme.of(GetUtil.context).textTheme.headline4;

  static TextStyle? get headline5 =>
      Theme.of(GetUtil.context).textTheme.headline5;

  static TextStyle? get headline6 =>
      Theme.of(GetUtil.context).textTheme.headline6;

  static TextStyle? get subtitle1 =>
      Theme.of(GetUtil.context).textTheme.subtitle1;

  static TextStyle? get subtitle2 =>
      Theme.of(GetUtil.context).textTheme.subtitle2;

  static TextStyle? get bodyText1 =>
      Theme.of(GetUtil.context).textTheme.bodyText1;

  static TextStyle? get bodyText2 =>
      Theme.of(GetUtil.context).textTheme.bodyText2;

  static TextStyle? get caption => Theme.of(GetUtil.context).textTheme.caption;

  static TextStyle? get button => Theme.of(GetUtil.context).textTheme.button;

  static TextStyle? get overline =>
      Theme.of(GetUtil.context).textTheme.overline;

// #endregion

// #region Colors
  static Color get primaryColor => Theme.of(GetUtil.context).primaryColor;

  static Color get dividerColor => Theme.of(GetUtil.context).dividerColor;

  static Color get scaffoldBackgroundColor =>
      Theme.of(GetUtil.context).scaffoldBackgroundColor;

// #endregion

  static const Duration shortAnimationDuration = Duration(milliseconds: 300);
  static const Duration veryAnimationDuration = Duration(milliseconds: 100);
}
