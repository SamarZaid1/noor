import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:expandable/expandable.dart';
import 'package:get/get.dart';
import 'package:noor/core/share/empty_widghet.dart';
import 'package:noor/core/share/lang_view.dart';
import 'package:noor/core/share/widget/exam_result_widght.dart';
import 'package:noor/core/theme/app_theme.dart';
import 'package:noor/core/theme/colors.dart';
import 'package:noor/core/theme/text_font_family.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import '../../../data/student_exam_result.dart';
import 'student_exam_result_controller.dart';
import 'package:noor/core/contracts/view.dart';
import 'package:data_table_2/data_table_2.dart';

class StudentExamResultView extends View1<StudentExamResultController> {
  /* final StudentProfileController controller =
      Get.put(StudentProfileController());*/

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              centerTitle: false,
              iconTheme: IconThemeData(
                color: Colors.white, //change your color here
              ),
              backgroundColor: ThemeColor.primaryColor,
              title: Text("نتائج اختباراتي",
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
                      : ExpandableTheme(
                          data: const ExpandableThemeData(
                            iconColor: Colors.blue,
                            useInkWell: true,
                          ),
                          child: ListView.builder(
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemCount: state!.data!.length,
                              itemBuilder: (context, index) {
                                return Card1(state.data![index]);
                              })),
                  onLoading: Center(
                    child: CircularProgressIndicator(),
                  ),
                  onEmpty: Center(child: empty("حدث خطا ما"))),
            ),
          ),
        ));
  }
}
