import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:noor/core/share/lang_view.dart';
import 'package:noor/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sizer/sizer.dart';

import '../../core/theme/app_theme.dart';
import '../../core/theme/colors.dart';
import '../../core/theme/text_font_family.dart';
import 'profile_controller.dart';
import 'package:noor/core/contracts/view.dart';

class ProfileView extends View1<ProfileController> {
  final ProfileController controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: Text("الملف الشخصي",
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    fontFamily: AppFonts.cairo,
                    fontSize: 12.sp,
                    color: ThemeColor.accentColor)),
            backgroundColor: ThemeColor.primaryColor,
          ),
          body: ListView(
            children: [
              header(),
              //Divider(),

              Padding(
                  padding: EdgeInsets.all(8.sp),
                  child: Card(
                      elevation: 0.5,
                      child: Column(children: [
                        buildListTile(
                            "assets/icons/edit.svg", "بيانات الطالب".tr, () {
                          Get.toNamed(Routes.StudentProfileView);
                        }),
                        buildListTile("assets/icons/schedules.svg",
                            "جدول المحاضرات", () {}),
                        buildListTile("assets/icons/result.svg", "النتائج", () {
                          Get.toNamed(Routes.StudentExamResultView);
                        }),
                        buildListTile("assets/icons/exam.svg", "الاختبارات",
                            () {
                          Get.toNamed(Routes.StudentExamView);
                        }),
                        buildListTile(
                            "assets/icons/subject.svg", "المواد الدراسية", () {
                          Get.toNamed(Routes.StudentSubjectView);
                        }),
                        /*  buildListTile("assets/icons/homeWork.svg",
                            "My Home Work".tr, () {}),*/
                        buildListTile(
                            "assets/icons/circulars.svg", "الاشعارات المالية",
                            () {
                          Get.toNamed(Routes.StudentFeesView);
                        }),
                        /*  buildListTile("assets/icons/lang.svg", "اللغة",
                            () {
                        //  LangView().buildLanguageDialog(context);
                        }),*/
                        buildListTile("assets/icons/logout.svg", "تسجيل الخروج",
                            () {
                          AwesomeDialog(
                            context: context,
                            animType: AnimType.scale,
                            dialogType: DialogType.warning,
                            dialogBackgroundColor: ThemeColor.accentColor,
                            desc: "هل تريد تسجيل الخروج من التطبيق ؟",
                            btnCancelText: "الغاء",
                            btnOkText: "موافق",
                            btnCancelColor: ThemeColor.primaryColor,
                            btnOkColor: ThemeColor.editTextColor,
                            descTextStyle: AppTheme.customHeadline3.copyWith(
                                color: ThemeColor.editTextColor,
                                fontFamily: AppFonts.large,
                                fontWeight: FontWeight.w600,
                                fontSize: 10.sp),
                            btnOkOnPress: () async {
                              controller.logOut();
                            },
                            btnCancelOnPress: () {
                              Get.back();
                            },
                          )..show();
                        }),
                        buildListTile("assets/icons/delete.svg", "حذف الحساب",
                            () async {
                          AwesomeDialog(
                            context: context,
                            animType: AnimType.scale,
                            dialogType: DialogType.error,
                            desc: "هل تريد حذف هذا الحساب ؟",
                            btnCancelText: "الغاء",
                            btnOkText: "موافق",
                            btnCancelColor: ThemeColor.grayColor,
                            btnOkColor: ThemeColor.editTextColor,
                            descTextStyle: AppTheme.customHeadline3.copyWith(
                                color: ThemeColor.editTextColor,
                                fontFamily: AppFonts.large,
                                fontWeight: FontWeight.w600,
                                fontSize: 10.sp),
                            btnOkOnPress: () async {},
                            btnCancelOnPress: () {
                              Get.back();
                            },
                          )..show();
                        }),
                      ]))),
            ],
          )),
    );
  }

  buildListTile(String icon, String title, var fun) {
    return Padding(
      padding: EdgeInsets.all(4.sp),
      child: ListTile(
        onTap: fun,
        leading: Container(
          width: 30.sp,
          height: 30.sp,
          decoration: BoxDecoration(
            color: ThemeColor.profilecolor,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              icon,
              width: 18.sp,
            ),
          ),
        ),
        title: Text(title,
            style: AppTheme.customBodyText2.copyWith(
                color: ThemeColor.blackColor,
                fontFamily: AppFonts.medium,
                fontSize: 10.sp)),
      ),
    );
  }

  header() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 35.0,
            backgroundImage: NetworkImage(
                controller.userContorller.user.value.data!.student == null
                    ? ""
                    : controller
                        .userContorller.user.value.data!.student!.photo!),
          ),
          Padding(
            padding: EdgeInsets.only(right: 8.w, left: 8.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    '${controller.userContorller.user.value.data!.student == null ? "" : controller.userContorller.user.value.data!.student!.displayName!}',
                    style: AppTheme.customHeadline3.copyWith(
                        color: ThemeColor.blackColor,
                        fontFamily: AppFonts.large,
                        fontSize: 16.0)),
                Text(
                    '${controller.userContorller.user.value.data!.student == null ? "" : controller.userContorller.user.value.data!.student!.contactPhone!}',
                    style: AppTheme.customHeadline3.copyWith(
                        color: ThemeColor.grayColor,
                        fontFamily: AppFonts.large,
                        fontSize: 14.0)),
              ],
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
        ],
      ),
    );
  }
}
