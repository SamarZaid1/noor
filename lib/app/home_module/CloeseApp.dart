import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:noor/core/theme/app_theme.dart';
import 'package:noor/core/theme/colors.dart';
import 'package:sizer/sizer.dart';

class CloseApp {
  BuildContext context;
  CloseApp(this.context);

  Future<bool> onWillPop() async {
    AwesomeDialog(
      context: context,
      animType: AnimType.scale,
      dialogType: DialogType.warning,
      dialogBackgroundColor: ThemeColor.accentColor,
      desc: 'هل تريد الخروج من التطبيق',
      btnCancelText: "الغاء",
      btnCancelColor: ThemeColor.primaryColor,
      btnOkColor: ThemeColor.grayColor,
      btnOkText: "موافق",
      descTextStyle: AppTheme.customHeadline3.copyWith(
          color: ThemeColor.primaryColor,
          fontWeight: FontWeight.w600,
          fontSize: 10.sp),
      btnOkOnPress: () async {
        SystemChannels.platform.invokeMethod('SystemNavigator.pop');
      },
      btnCancelOnPress: () {
        Get.back();
      },
    )..show();

    return true;
  }
}
