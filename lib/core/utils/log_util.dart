import 'dart:developer';

import 'package:flutter_bugfender/flutter_bugfender.dart';

class LogUtil {
  const LogUtil._();

  static Future<void> d({required String message}) async {
    try {
      await FlutterBugfender.debug(message);
    } on Exception catch (e) {
      log('$message : ${e.toString()}');
    }
  }

  static Future<void> e({
    required String message,
    Exception? exception,
  }) async {
    try {
      await FlutterBugfender.error('$message : ${exception.toString()}');
    } on Exception catch (e) {
      log('$message : ${e.toString()}');
    }
  }
}
