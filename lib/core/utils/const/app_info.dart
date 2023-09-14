// import 'package:flutter/foundation.dart';
// import 'package:get/get.dart';
// import 'package:get/get_utils/src/platform/platform_web.dart';
// import 'package:get/utils.dart';

import 'package:get/get_utils/src/platform/platform.dart';

class AppInfo {
  /// [appId] is ID app in mongo_db
  /// [appVersion] is  Curent   version app
  /// [localVersion] is  locaaztion version on remote config

  static String appId = '61e34e4b1269c39501587ceb';
  static String packgeName = "com.bayanerp.bayan_template";
  static String appVersion = '1.0.0';
  static String localVersion = '2.0.0';

  static String appPlatform = getPalfrom();

  static String getPalfrom() {
    if (GetPlatform.isAndroid) return "Android";
    if (GetPlatform.isIOS) return "Ios";
    if (GetPlatform.isWeb) return "Web";
    if (GetPlatform.isDesktop) return "Desktop";
    if (GetPlatform.isFuchsia) return "Fuchsia";
    if (GetPlatform.isMacOS) return "isMacOS";

    return "undefind";
  }
}
