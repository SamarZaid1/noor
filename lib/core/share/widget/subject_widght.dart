import 'package:flutter/material.dart';
import 'package:noor/core/theme/colors.dart';
import 'package:noor/core/theme/text_font_family.dart';
import 'package:sizer/sizer.dart';

class SubjectWidget extends StatelessWidget {
  String subject_name;
  int maximum_marks, minimum_marks;
  SubjectWidget(
      {required this.maximum_marks,
      required this.minimum_marks,
      required this.subject_name});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("${subject_name}",
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontFamily: AppFonts.cairo,
                    fontSize: 10.sp,
                    color: ThemeColor.blackColor)),
            Row(
              children: [
                Text("${maximum_marks}",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontFamily: AppFonts.cairo,
                        fontSize: 9.sp,
                        color: ThemeColor.blackColor)),
                Text("/ ${minimum_marks}",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontFamily: AppFonts.cairo,
                        fontSize: 9.sp,
                        color: ThemeColor.fontColor)),
              ],
            )
          ],
        ),
        SizedBox(
          height: 1.h,
        ),
      ],
    );
  }
}
