import 'package:flutter/material.dart';

class ColorPalettes {
  const ColorPalettes._();

  static const _primaryValue = 0xffBD9B30;

  static const primary = Color(_primaryValue);
  static const black = Color(0xff313450);
  static const darkGrey = Color(0xff898a8f);
  static const grey = Color(0xff94a5a6);
  static const lightGrey = bgNavigationMenu;
  static const divider = Color(0xffECECEC);
  static const divider2 = Color(0xffB5B5B5);
  static const bgGrey = Color(0xffFBFBFB);
  static const bgGrey2 = Color(0xffF8F8F8);
  static const bgGrey3 = Color(0xffB3B3B3);
  static const bgGrey4 = Color(0xffF7F7F7);

  static const greyBackground = lightGrey;

  static const green = Color(0xff2B9D21);
  static Color bgGreen50 = const Color(0xffB9FFC4).withOpacity(0.5);
  static Color bgGoldMenuItem = const Color(0xffBD9B30);
  static const bgNavigationMenu = Color(0xffF8F4F5);
  static const bgCard = Color(0xffF7F7F7);
  static const bgProductItemGold = Color(0xffBD9B30);
  static Color bgGoldOp15 = const Color(0xffBD9B30).withOpacity(0.15);
  static Color bgGoldOp10 = const Color(0xffBD9B30).withOpacity(0.10);
  static const gold = Color(0xffBD9B30);
  static const goldLight = Color(0xffFFF7DE);
  static const goldDark = Color(0xffAB8100);
  static const goldDark2 = Color(0xff60432D);
  static const goldDark3 = Color(0xff8B6B08);
  static const goldText = Color(0xffBD9B30);
  static const bgGreyForm = Color(0xffFCFCFC);
  static const greyForm = Color(0xffE7E7E7);
  static const greyForm2 = Color(0xffEDEDED);
  static const greyFormBorder = Color(0xffCFCFCF);
  static const greyText = Color(0xff858585);
  static Color greyText2 = const Color(0xff404040).withOpacity(0.6);
  static Color greyText3 = const Color(0xff414141);
  static Color greyText4 = const Color(0xff9D9D9D);
  static Color greyText5 = const Color(0xff797979);
  static Color greyText6 = const Color(0xff575757);
  static const greyDark100 = Color(0xff424242);
  static Color grey75 = greyDark100.withOpacity(0.75);
  static Color grey25 = greyDark100.withOpacity(0.25);
  static Color blackShadow = Colors.black.withOpacity(0.25);
  static Color shadowCard = const Color(0xff2B2B2B).withOpacity(0.25);

  static Color purple = const Color(0XFFE5CAFF);
  static Color purple2 = const Color(0XFF9327FF);

  static const primarySwatch = MaterialColor(
    _primaryValue,
    <int, Color>{
      50: Color(_primaryValue),
      100: Color(_primaryValue),
      200: Color(_primaryValue),
      300: Color(_primaryValue),
      400: Color(_primaryValue),
      500: Color(_primaryValue),
      600: Color(_primaryValue),
      700: Color(_primaryValue),
      800: Color(_primaryValue),
      900: Color(_primaryValue),
    },
  );
}
