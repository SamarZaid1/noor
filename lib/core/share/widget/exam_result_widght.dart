import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:noor/core/theme/app_theme.dart';
import 'package:noor/core/theme/colors.dart';
import 'package:noor/core/theme/text_font_family.dart';
import 'package:sizer/sizer.dart';

import '../../../data/student_exam_result.dart';

class Card1 extends StatelessWidget {
  Data data;
  Card1(this.data);
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 100,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("${data.id}",
                                  style: AppTheme.customHeadline3.copyWith(
                                      color: ThemeColor.blackColor,
                                      fontFamily: AppFonts.large,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12.sp)),
                              Text("${data.aExamId!.name}",
                                  style: AppTheme.customHeadline3.copyWith(
                                      color: ThemeColor.blackColor,
                                      fontFamily: AppFonts.large,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12.sp)),
                              Text("${data.standardId!.name}",
                                  style: AppTheme.customHeadline3.copyWith(
                                      color: ThemeColor.blackColor,
                                      fontFamily: AppFonts.large,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12.sp)),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 5,
                                backgroundColor: data.isFaild == true
                                    ? Colors.red
                                    : Colors.green,
                              ),
                              Text("${data.result}",
                                  style: AppTheme.customHeadline3.copyWith(
                                      color: ThemeColor.blackColor,
                                      fontFamily: AppFonts.large,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12.sp)),
                              Text("${data.obtainMarks}",
                                  style: AppTheme.customHeadline3.copyWith(
                                      color: data.isFaild == true
                                          ? Colors.red
                                          : Colors.green,
                                      fontFamily: AppFonts.large,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12.sp)),
                              Text(data.isFaild == true ? "راسب" : "ناجح",
                                  style: AppTheme.customHeadline3.copyWith(
                                      color: data.isFaild == true
                                          ? Colors.red
                                          : Colors.green,
                                      fontFamily: AppFonts.large,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12.sp)),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                ScrollOnExpand(
                  scrollOnExpand: true,
                  scrollOnCollapse: false,
                  child: ExpandablePanel(
                    theme: const ExpandableThemeData(
                      headerAlignment: ExpandablePanelHeaderAlignment.center,
                      tapBodyToCollapse: true,
                    ),
                    header: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "الدرجات الفرعية",
                        )),
                    collapsed: Text(
                      "",
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    expanded: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        for (var c in data.examAspects!)
                          Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: Container(
                                  color: Colors.white,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("${c.name}",
                                          style: AppTheme.customHeadline3.copyWith(
                                              color: ThemeColor.blackColor,
                                              fontFamily: AppFonts.large,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12.sp)),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("${c.examType}",
                                              style: AppTheme.customHeadline3
                                                  .copyWith(
                                                  color: ThemeColor.blackColor,
                                                  fontFamily: AppFonts.large,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 12.sp)),
                                          Text("${c.examDate}",
                                              style: AppTheme.customHeadline3
                                                  .copyWith(
                                                  color: ThemeColor.blackColor,
                                                  fontFamily: AppFonts.large,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 12.sp)),
                                          Text("${c.minimumMarks}",
                                              style: AppTheme.customHeadline3
                                                  .copyWith(
                                                  color: ThemeColor.blackColor,
                                                  fontFamily: AppFonts.large,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 12.sp)),
                                          Text("${c.maximumMarks}",
                                              style: AppTheme.customHeadline3
                                                  .copyWith(
                                                  color: ThemeColor.blackColor,
                                                  fontFamily: AppFonts.large,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 12.sp)),
                                          Text("${c.studentMark}",
                                              style: AppTheme.customHeadline3
                                                  .copyWith(
                                                  color: c.isFailed == true
                                                      ? Colors.red
                                                      : Colors.green,
                                                  fontFamily: AppFonts.large,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 12.sp)),
                                        ],
                                      ),
                                    ],
                                  ))),
                      ],
                    ),
                    builder: (_, collapsed, expanded) {
                      return Padding(
                        padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                        child: Expandable(
                          collapsed: collapsed,
                          expanded: expanded,
                          theme: const ExpandableThemeData(crossFadePoint: 0),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}