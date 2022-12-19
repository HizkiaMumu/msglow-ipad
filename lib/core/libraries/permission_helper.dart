import 'dart:developer';

import 'package:permission_handler/permission_handler.dart';

class PermissionHelper {
  const PermissionHelper._();

  static Future<void> requestPermissionStorage({
    required Function() onGranted,
    required Function() onDenied,
  }) async {
    try {
      final status = await Permission.storage.request();
      if (status.isGranted) {
        onGranted();
      } else {
        onDenied();
      }
    } catch (e) {
      log('requestPermissionStorage $e');
    }
  }

  static Future<void> requestPermissionCamera({
    required Function() onGranted,
    required Function() onDenied,
  }) async {
    try {
      final status = await Permission.camera.request();
      if (status.isGranted) {
        onGranted();
      } else {
        onDenied();
      }
    } catch (e) {
      log('requestPermissionCamera $e');
    }
  }
}
