/* import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart' as intl;
import 'package:logger/logger.dart';

class HelpersMethods {
  // HelpersMethods._();
  var logger = Logger();

  Duration timeOutDuration({int seconds = 5}) {
    return Duration(seconds: seconds);
  }

  hideSoftKeyBoard() {
    FocusScope.of(Get.context!).requestFocus(FocusNode());
  }

  static TextDirection currentLocaleTextDirection() {
    bool isRtl = intl.Bidi.isRtlLanguage(
        Localizations.localeOf(Get.context!).languageCode);
    return isRtl ? TextDirection.rtl : TextDirection.ltr;
  }

  static bool isDirectionRTL() {
    return intl.Bidi.isRtlLanguage(
        Localizations.localeOf(Get.context!).languageCode);
  }
}
 */