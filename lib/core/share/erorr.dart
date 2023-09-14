import 'package:noor/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

showSnakBarErorr({required String msg, required color}) {
  Get.showSnackbar(GetBar(
    icon: Icon(
      color==ThemeColor.successColor?Icons.check_circle_outline:
      Icons.error_outline_outlined,
      color: Colors.white,
    ),
    title: "تنبية",
    snackPosition: SnackPosition.TOP,
    message: msg,
    //overlayBlur: 5.0,
    isDismissible: false,
    dismissDirection: DismissDirection.horizontal,
    duration: Duration(seconds: 5),
    backgroundColor: color,
  ));
}
