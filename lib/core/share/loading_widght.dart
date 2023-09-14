import 'package:flutter/material.dart';
import 'package:noor/core/theme/colors.dart';
import 'package:noor/core/theme/text_font_family.dart';
import 'package:sizer/sizer.dart';

Container loading() {
  return Container(
    height: double.infinity,
    width: double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        SizedBox(height: 4.h,),
        Text("تحميل البيانات",style: TextStyle(
            fontFamily: AppFonts.medium,
            fontSize: 14.sp,
            color: ThemeColor.primaryColor),)
      ],
    ),
  );
}
