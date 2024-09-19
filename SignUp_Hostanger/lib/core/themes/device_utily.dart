import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class TDeviceUtils {
  TDeviceUtils._(); //To avoid creating instances

  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getPixelRatio() {
    return MediaQuery.of(Get.context!).devicePixelRatio;
  }

  static double getStateBarHeight() {
    return MediaQuery.of(Get.context!).padding.top;
  }

  static double getBottomNavigationBarHeight() {
    return kToolbarHeight;
  }

  static double getAppBarHeight() {
    return kToolbarHeight;
  }

  static double getKeyboardHeight() {
    final viewInsets = MediaQuery.of(Get.context!).viewInsets;
    return viewInsets.bottom;
  }

  static Future<bool> getKeyboardVisable() async {
    final viewInsets = MediaQuery.of(Get.context!).viewInsets;
    return viewInsets.bottom > 0;
  }

  static Future<bool> isKeyboardVisible() async {
    //final viewInsets = MediaQuery.of(Get.context!).viewInsets;
    return defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS;
  }
}
