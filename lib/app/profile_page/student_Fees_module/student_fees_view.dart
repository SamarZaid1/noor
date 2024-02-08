import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:get/get.dart';
import 'package:noor/core/share/empty_widghet.dart';
import 'package:noor/core/share/lang_view.dart';
import 'package:noor/core/share/widget/fees_widght.dart';
import 'package:noor/core/theme/app_theme.dart';
import 'package:noor/core/theme/colors.dart';
import 'package:noor/core/theme/text_font_family.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'student_fees_controller.dart';
import 'package:noor/core/contracts/view.dart';

class StudentFeesView extends View1<StudentFeesController> {
  //final StudentFeesController controller = Get.put(StudentFeesController());

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
              title: Text("الرسوم الدراسية",
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
                          physics: ClampingScrollPhysics(),
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: state!.data!.length!,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.all(8.sp),
                              child: FeesCard(state!.data![index]),
                            );
                          },
                        ),
                  onLoading: Center(
                    child: CircularProgressIndicator(),
                  ),
                  onEmpty: Center(child: Text("no data"))),
            ),
          ),
        ));
  }
}
