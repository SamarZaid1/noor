import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:get/get.dart';
import 'package:noor/core/share/lang_view.dart';
import 'package:noor/core/theme/app_theme.dart';
import 'package:noor/core/theme/colors.dart';
import 'package:noor/core/theme/text_font_family.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import '../../../core/share/empty_widghet.dart';
import 'student_exam_controller.dart';
import 'package:noor/core/contracts/view.dart';
import 'package:data_table_2/data_table_2.dart';

class StudentExamView extends View1<StudentExamController> {
  /* final StudentProfileController controller =
      Get.put(StudentProfileController());*/

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              iconTheme: IconThemeData(
                color: Colors.white, //change your color here
              ),
              centerTitle: false,
              backgroundColor: ThemeColor.primaryColor,
              title: Text("اختبارتي",
                  style: AppTheme.customHeadline3.copyWith(
                      color: ThemeColor.accentColor,
                      fontFamily: AppFonts.large,
                      fontWeight: FontWeight.w600,
                      fontSize: 12.sp)),
            ),
            body: Container(
              color: ThemeColor.accentColor,
              child: controller.obx(
                  (state) => state!.data!.isEmpty
                      ? Center(child: empty("لايوجد بيانات"))
                      : ListView.builder(
                          itemCount: state!.data!.length,
                          itemBuilder: (ctx, index) {
                            return Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Card(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Text("#${state.data![index].id}",
                                              style: AppTheme.customHeadline3
                                                  .copyWith(
                                                      color: ThemeColor
                                                          .primaryColor,
                                                      fontFamily:
                                                          AppFonts.large,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 12.sp)),
                                          SizedBox(
                                            width: 5.w,
                                          ),
                                          Text(
                                              "${state!.data![index].displayName}",
                                              style: AppTheme.customHeadline3
                                                  .copyWith(
                                                      color: ThemeColor
                                                          .primaryColor,
                                                      fontFamily:
                                                          AppFonts.large,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 12.sp))
                                        ],
                                      ),
                                    ),
                                    Divider(
                                      thickness: 0.2,
                                    ),
                                    Row(
                                      children: [
                                        Text("موعد الامتحان",
                                            style: AppTheme.customHeadline3
                                                .copyWith(
                                                    color:
                                                        ThemeColor.primaryColor,
                                                    fontFamily: AppFonts.large,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 12.sp)),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text(
                                            "${state!.data![index].examAspects![0].examDate}",
                                            style: AppTheme.customHeadline3
                                                .copyWith(
                                                    color:
                                                        ThemeColor.primaryColor,
                                                    fontFamily: AppFonts.large,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 12.sp)),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("اقل درجة",
                                            style: AppTheme.customHeadline3
                                                .copyWith(
                                                    color:
                                                        ThemeColor.primaryColor,
                                                    fontFamily: AppFonts.large,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 12.sp)),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text(
                                            "${state!.data![index].minimumMarks}",
                                            style: AppTheme.customHeadline3
                                                .copyWith(
                                                    color:
                                                        ThemeColor.primaryColor,
                                                    fontFamily: AppFonts.large,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 12.sp))
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("اعلى درجة",
                                            style: AppTheme.customHeadline3
                                                .copyWith(
                                                    color:
                                                        ThemeColor.primaryColor,
                                                    fontFamily: AppFonts.large,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 12.sp)),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text(
                                            "${state!.data![index].maximumMarks}",
                                            style: AppTheme.customHeadline3
                                                .copyWith(
                                                    color:
                                                        ThemeColor.primaryColor,
                                                    fontFamily: AppFonts.large,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 12.sp))
                                      ],
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    SizedBox(
                                      height: 25.h,
                                      child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: state!
                                              .data![index].examAspects!.length,
                                          itemBuilder: (ctx, i) {
                                            return Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Card(
                                                elevation: 0,
                                                color: Colors.grey.shade100,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: Row(
                                                          children: [
                                                            Text(
                                                                "#${state!.data![index].examAspects![i].id}",
                                                                style: AppTheme.customHeadline3.copyWith(
                                                                    color: ThemeColor
                                                                        .primaryColor,
                                                                    fontFamily:
                                                                        AppFonts
                                                                            .large,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontSize:
                                                                        12.sp)),
                                                            SizedBox(
                                                              width: 5.w,
                                                            ),
                                                            Text(
                                                                "${state!.data![index].examAspects![i].displayName}",
                                                                style: AppTheme.customHeadline3.copyWith(
                                                                    color: ThemeColor
                                                                        .primaryColor,
                                                                    fontFamily:
                                                                        AppFonts
                                                                            .large,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontSize:
                                                                        12.sp))
                                                          ],
                                                        ),
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text("موعد الامتحان",
                                                              style: AppTheme.customHeadline3.copyWith(
                                                                  color: ThemeColor
                                                                      .primaryColor,
                                                                  fontFamily:
                                                                      AppFonts
                                                                          .large,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize:
                                                                      12.sp)),
                                                          SizedBox(
                                                            width: 5.w,
                                                          ),
                                                          Text(
                                                              "${state!.data![index].examAspects![i].examDate}",
                                                              style: AppTheme.customHeadline3.copyWith(
                                                                  color: ThemeColor
                                                                      .primaryColor,
                                                                  fontFamily:
                                                                      AppFonts
                                                                          .large,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize:
                                                                      12.sp)),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text("نوع الامتحان",
                                                              style: AppTheme.customHeadline3.copyWith(
                                                                  color: ThemeColor
                                                                      .primaryColor,
                                                                  fontFamily:
                                                                      AppFonts
                                                                          .large,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize:
                                                                      12.sp)),
                                                          SizedBox(
                                                            width: 5.w,
                                                          ),
                                                          Text(
                                                              "${state!.data![index].examAspects![i].examType}",
                                                              style: AppTheme.customHeadline3.copyWith(
                                                                  color: ThemeColor
                                                                      .primaryColor,
                                                                  fontFamily:
                                                                      AppFonts
                                                                          .large,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize:
                                                                      12.sp)),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text("اقل درجة",
                                                              style: AppTheme.customHeadline3.copyWith(
                                                                  color: ThemeColor
                                                                      .primaryColor,
                                                                  fontFamily:
                                                                      AppFonts
                                                                          .large,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize:
                                                                      12.sp)),
                                                          SizedBox(
                                                            width: 5.w,
                                                          ),
                                                          Text(
                                                              "${state!.data![index].examAspects![i].minimumMarks}",
                                                              style: AppTheme.customHeadline3.copyWith(
                                                                  color: ThemeColor
                                                                      .primaryColor,
                                                                  fontFamily:
                                                                      AppFonts
                                                                          .large,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize:
                                                                      12.sp))
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text("اعلى درجة",
                                                              style: AppTheme.customHeadline3.copyWith(
                                                                  color: ThemeColor
                                                                      .primaryColor,
                                                                  fontFamily:
                                                                      AppFonts
                                                                          .large,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize:
                                                                      12.sp)),
                                                          SizedBox(
                                                            width: 5.w,
                                                          ),
                                                          Text(
                                                              "${state!.data![index].examAspects![i].maximumMarks}",
                                                              style: AppTheme.customHeadline3.copyWith(
                                                                  color: ThemeColor
                                                                      .primaryColor,
                                                                  fontFamily:
                                                                      AppFonts
                                                                          .large,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize:
                                                                      12.sp))
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            );
                                          }),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),

                  /*   DataTable2(
                      columnSpacing: 12,
                      horizontalMargin: 12,
                      minWidth: 600,
                      columns: [
                        DataColumn2(
                          label: Text("#",
                              style: AppTheme.customHeadline3.copyWith(
                                  color: ThemeColor.primaryColor,
                                  fontFamily: AppFonts.large,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.sp)),
                          size: ColumnSize.S,
                        ),
                        DataColumn2(
                          label: Text("المادة",
                              style: AppTheme.customHeadline3.copyWith(
                                  color: ThemeColor.primaryColor,
                                  fontFamily: AppFonts.large,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.sp)),
                          size: ColumnSize.S,
                        ),
                        DataColumn2(
                          label: Text("موعد الامتحان",
                              style: AppTheme.customHeadline3.copyWith(
                                  color: ThemeColor.primaryColor,
                                  fontFamily: AppFonts.large,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.sp)),
                          size: ColumnSize.M,
                        ),
                        DataColumn2(
                          label: Text("اقل درجة",
                              style: AppTheme.customHeadline3.copyWith(
                                  color: ThemeColor.primaryColor,
                                  fontFamily: AppFonts.large,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.sp)),
                          size: ColumnSize.S,
                        ),
                        DataColumn2(
                          label: Text("اعلى درجة",
                              style: AppTheme.customHeadline3.copyWith(
                                  color: ThemeColor.primaryColor,
                                  fontFamily: AppFonts.large,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.sp)),
                          size: ColumnSize.S,
                          numeric: true,
                        ),
                      ],
                      rows: List<DataRow>.generate(
                          state!.data!.length,
                          (index) => DataRow(cells: [
                                DataCell(
                                  Text("${state.data![index].id}",
                                      style: AppTheme.customHeadline3.copyWith(
                                          color: ThemeColor.primaryColor,
                                          fontFamily: AppFonts.large,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12.sp)),
                                ),
                                DataCell(Text(
                                    "${state!.data![index].displayName}",
                                    style: AppTheme.customHeadline3.copyWith(
                                        color: ThemeColor.primaryColor,
                                        fontFamily: AppFonts.large,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12.sp))),
                                DataCell(
                                  Text(
                                      "${state!.data![index].examAspects![0].examDate}",
                                      style: AppTheme.customHeadline3.copyWith(
                                          color: ThemeColor.primaryColor,
                                          fontFamily: AppFonts.large,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12.sp)),
                                ),
                                DataCell(
                                  Text("${state!.data![index].minimumMarks}",
                                      style: AppTheme.customHeadline3.copyWith(
                                          color: ThemeColor.primaryColor,
                                          fontFamily: AppFonts.large,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12.sp)),
                                ),
                                DataCell(
                                  Text("${state!.data![index].maximumMarks}",
                                      style: AppTheme.customHeadline3.copyWith(
                                          color: ThemeColor.primaryColor,
                                          fontFamily: AppFonts.large,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12.sp)),
                                )
                              ]))),*/
                  onLoading: Center(
                    child: CircularProgressIndicator(),
                  ),
                  onEmpty: Center(
                    child: empty("حدث خطا ما"),
                  )),
            ),
          ),
        ));
  }
}
