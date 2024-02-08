import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:get/get.dart';
import 'package:noor/core/share/empty_widghet.dart';
import 'package:noor/core/share/lang_view.dart';
import 'package:noor/core/theme/app_theme.dart';
import 'package:noor/core/theme/colors.dart';
import 'package:noor/core/theme/text_font_family.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'student_subject_controller.dart';
import 'package:noor/core/contracts/view.dart';

class StudentSubjectView extends View1<StudentSubjectController> {
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
              title: Text("موادي الدراسية",
                  style: AppTheme.customHeadline3.copyWith(
                      color: ThemeColor.accentColor,
                      fontFamily: AppFonts.large,
                      fontWeight: FontWeight.w600,
                      fontSize: 12.sp)),
            ),
            body: Container(
              color: ThemeColor.accentColor,
              child: controller.obx(
                  (state) =>state!.data!.isEmpty
                      ? Center(
                      child: empty("لايوجد بيانات"))
                      : ListView.builder(
                        physics: ClampingScrollPhysics(),
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: state!.data!.length!,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.all(8.sp),
                            child: ListTile(
                              leading: Container(
                                width: 35.sp,
                                height: 35.sp,
                                decoration: BoxDecoration(
                                  color: ThemeColor.profilecolor,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(14.0),
                                  child: SvgPicture.asset(
                                    "assets/icons/menu.svg",
                                    width: 18.sp,
                                  ),
                                ),
                              ),
                              title: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("${state!.data![index].displayName}",
                                      style: AppTheme.customHeadline3.copyWith(
                                          color: ThemeColor.primaryColor,
                                          fontFamily: AppFonts.large,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12.sp)),
                                  Text("#${state!.data![index].code}",
                                      style: AppTheme.customHeadline3.copyWith(
                                          color: ThemeColor.grayColor,
                                          fontFamily: AppFonts.large,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 10.sp)),
                                ],
                              ),
                              subtitle: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text("اعلى درجة",
                                          style: AppTheme.customHeadline3
                                              .copyWith(
                                                  color: ThemeColor.grayColor,
                                                  fontFamily: AppFonts.large,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 10.sp)),
                                      Text(
                                          "${state!.data![index].maximumMarks}",
                                          style: AppTheme.customHeadline3
                                              .copyWith(
                                                  color: ThemeColor.grayColor,
                                                  fontFamily: AppFonts.large,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 10.sp)),
                                      Text("اقل درجة",
                                          style: AppTheme.customHeadline3
                                              .copyWith(
                                                  color: ThemeColor.grayColor,
                                                  fontFamily: AppFonts.large,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 10.sp)),
                                      Text(
                                          "${state!.data![index].minimumMarks}",
                                          style: AppTheme.customHeadline3
                                              .copyWith(
                                                  color: ThemeColor.grayColor,
                                                  fontFamily: AppFonts.large,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 10.sp))
                                    ],
                                  ),
                                  Text(
                                      "${state!.data![index].schoolId!.name} - ${state!.data![index].divisionId!.name}",
                                      style: AppTheme.customHeadline3.copyWith(
                                          color: ThemeColor.grayColor,
                                          fontFamily: AppFonts.large,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 10.sp))
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                  onLoading: Center(
                    child: CircularProgressIndicator(),
                  ),
                  onEmpty: Center(child: Text("null"))),
            ),
          ),
        ));
  }
}
