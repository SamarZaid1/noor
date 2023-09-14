import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart' as intl;

extension NumExtension on num? {
  ///... format numbers
  String get formatNumbersWithSeparators {
    var formatter = intl.NumberFormat('###,###,###');
    return formatter.format(this ?? 0);
  }

  String get formatDoubleNumberDecimal {
    if (this == null) return '';
    intl.NumberFormat formatter = intl.NumberFormat();
    formatter.minimumFractionDigits = 0;
    formatter.maximumFractionDigits = 2;
    return formatter.format(this);
  }

  double get width {
    num? n = this;
    double width = MediaQuery.of(Get.context!).size.width;
    double height = MediaQuery.of(Get.context!).size.height;
    // if (MediaQuery.of(Get.context!).orientation == Orientation.portrait) {
    //   // return n?.w ?? 0;
    //   return (width * (n ?? 0)) / 100;
    // } else {
    //   // return n?.h ?? 0;
    //   return (height * (n ?? 0)) / 100;
    // }
    return (width * (n ?? 0)) / 100;
    // if (MediaQuery.of(Get.context!).orientation == Orientation.portrait) {
    //   // return n?.h ?? 0;
    //   return (height * (n ?? 0)) / 100;
    // } else {
    //   return (width * (n ?? 0)) / 100;
    // }
  }

  double get height {
    num? n = this;
    double width = MediaQuery.of(Get.context!).size.width;
    double height = MediaQuery.of(Get.context!).size.height;

    return (height * (n ?? 0)) / 100;
    if (MediaQuery.of(Get.context!).orientation == Orientation.portrait) {
      // return n?.h ?? 0;
      return (height * (n ?? 0)) / 100;
    } else {
      return (width * (n ?? 0)) / 100;
    }
  }
}
