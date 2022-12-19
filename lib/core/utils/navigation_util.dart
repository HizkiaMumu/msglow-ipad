import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationUtil {
  const NavigationUtil._();

  static void popUntil({
    bool closeOverlays = false,
    dynamic result,
  }) {
    Get.back(
      result: result,
      closeOverlays: closeOverlays,
    );
  }

  //region Navigation without named routes
  static Future<dynamic>? push(Widget nextScreen, {dynamic arguments}) async {
    return await Get.to(nextScreen, arguments: arguments);
  }

  static Future<dynamic>? pushReplacement(Widget nextScreen,
      {dynamic arguments}) async {
    return await Get.off(nextScreen, arguments: arguments);
  }

  static Future<dynamic>? pushAndRemoveUntil(Widget nextScreen,
      {dynamic arguments}) async {
    return await Get.offAll(nextScreen, arguments: arguments);
  }

//endregion

  //region Navigation with named routes
  static Future<dynamic>? pushNamed(String routeName,
      {dynamic arguments}) async {
    return await Get.toNamed(routeName, arguments: arguments);
  }

  static Future<dynamic>? pushReplacementNamed(String routeName,
      {dynamic arguments}) async {
    return await Get.offNamed(routeName, arguments: arguments);
  }

  static Future<dynamic>? pushNamedAndRemoveUntil(String routeName,
      {dynamic arguments}) async {
    return await Get.offAllNamed(routeName, arguments: arguments);
  }
//endregion
}
