import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noor/core/theme/colors.dart';
import 'package:sizer/sizer.dart';

class LangView {
  final List locale = [
    {'name': 'ENGLISH', 'locale': Locale('en_US', 'US')},
    {'name': 'عربي', 'locale': Locale('ar')},
  ];
  updateLanguage(Locale locale) {
    Get.back();
    Get.updateLocale(locale);
  }

  buildLanguageDialog(BuildContext context) {
    AwesomeDialog(
      context: context,
      animType: AnimType.scale,
      dialogType: DialogType.warning,
      title: "تغيير لغه التطبيق ",
      titleTextStyle: Theme.of(context)
          .textTheme
          .subtitle2!
          .copyWith(fontSize: 10.sp, color: ThemeColor.primaryColor),
      body: Padding(
        padding: EdgeInsets.all(4.h),
        child: Container(
          width: double.maxFinite,
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    child: Text(locale[index]['name'],
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            fontSize: 10.sp,
                            color: ThemeColor.primaryColor)),
                    onTap: () {
                      print(locale[index]['name']);
                      updateLanguage(locale[index]['locale']);
                    },
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
                  height: 0.5,
                  color: ThemeColor.primaryColor,
                );
              },
              itemCount: locale.length),
        ),
      ),
      showCloseIcon: true,
    )..show();
  }
}
