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
        textDirection: TextDirection.ltr,
        child: SafeArea(
          child: Scaffold(
              body: ListView(
            children: [
              SizedBox(
                height: 5.h,
              ),
              header(),
              const SizedBox(
                height: 15.0,
              ),
              Padding(
                  padding: EdgeInsets.all(8.sp),
                  child: Card(
                      elevation: 0.5,
                      child: Column(children: [
                        buildListTile(
                            "assets/icons/edit.svg", "Personal File".tr, () {
                          Get.toNamed(Routes.StudentProfileView);
                        }),
                        buildListTile("assets/icons/schedules.svg",
                            "Schedules".tr, () {}),
                        buildListTile(
                            "assets/icons/result.svg", "My Results ".tr, () {}),
                        buildListTile(
                            "assets/icons/exam.svg", "My Exams".tr, () {}),
                        buildListTile("assets/icons/subject.svg",
                            "My Subjects".tr, () {}),
                        buildListTile("assets/icons/homeWork.svg",
                            "My Home Work".tr, () {}),
                        buildListTile("assets/icons/circulars.svg",
                            "University Circulars".tr, () {}),
                        buildListTile("assets/icons/lang.svg", "Changeling".tr,
                            () {
                          LangView().buildLanguageDialog(context);
                        }),
                        buildListTile("assets/icons/logout.svg", "LogOut".tr,
                            () {
                          AwesomeDialog(
                            context: context,
                            animType: AnimType.scale,
                            dialogType: DialogType.warning,
                            dialogBackgroundColor: ThemeColor.accentColor,
                            desc: 'DO_YOU_WANT_TO_EXIT_THE_APP'.tr,
                            btnCancelText: "cancel".tr,
                            btnCancelColor: ThemeColor.primaryColor,
                            btnOkColor: ThemeColor.editTextColor,
                            btnOkText: "ok".tr,
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
                        buildListTile(
                            "assets/icons/delete.svg", "DeleteAccount".tr,
                            () async {
                          AwesomeDialog(
                            context: context,
                            animType: AnimType.scale,
                            dialogType: DialogType.error,
                            desc: 'ARE_YOU_WANT_DELETE_THE_ACCOUNT'.tr,
                            btnCancelText: "cancel".tr,
                            btnOkText: "ok".tr,
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
        ));
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
            backgroundImage: AssetImage("assets/Avatar.png"),
          ),
          Padding(
            padding: EdgeInsets.only(right: 8.w, left: 8.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Ali Ali',
                    style: AppTheme.customHeadline3.copyWith(
                        color: ThemeColor.blackColor,
                        fontFamily: AppFonts.large,
                        fontSize: 16.0)),
                Text('iamdavid@gmail.com',
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
