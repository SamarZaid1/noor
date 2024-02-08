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
import 'student_profile_controller.dart';
import 'package:noor/core/contracts/view.dart';

class StudentProfileView extends View1<StudentProfileController> {
  /* final StudentProfileController controller =
      Get.put(StudentProfileController());
*/
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
          child: Scaffold(
            backgroundColor: ThemeColor.primaryColor,
            body: controller.obx(
                (state) => Container(
                      color: ThemeColor.accentColor,
                      child: NestedScrollView(
                          physics: NeverScrollableScrollPhysics(),
                          headerSliverBuilder:
                              (BuildContext context, bool innerBoxIsScrolled) {
                            return <Widget>[
                              SliverAppBar(
                                iconTheme: IconThemeData(
                                  color: ThemeColor
                                      .primaryColor, //change your color here
                                ),
                                expandedHeight: 150.0,
                                floating: false,
                                pinned: true,
                                backgroundColor: ThemeColor.profilecolor,
                                flexibleSpace: FlexibleSpaceBar(
                                  title: Padding(
                                    padding: const EdgeInsets.all(40.0),
                                    child: Text(
                                      "",
                                    ),
                                  ),
                                  centerTitle: true,
                                ),
                                bottom: PreferredSize(
                                  preferredSize: Size.fromHeight(50),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      /*   InkWell(
                                        child: Container(
                                            height: 30,
                                            width: 30,
                                            padding: EdgeInsets.only(top: 10),
                                            //   color: Colors.red,
                                            transform:
                                                Matrix4.translationValues(
                                                    0, 10, 0),
                                            child: SvgPicture.asset(
                                              "assets/icons/edit.svg",
                                              height: 25,
                                              width: 25,
                                              color: ThemeColor.primaryColor,
                                            )),
                                      ),*/

                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 20.0),
                                        child: Container(
                                          transform: Matrix4.translationValues(
                                              0, 40, 0),
                                          child: CircleAvatar(
                                            radius: 50,
                                            backgroundColor:
                                                ThemeColor.primaryColor,
                                            child: CircleAvatar(
                                              radius: 48,
                                              backgroundColor:
                                                  ThemeColor.primaryColor,
                                              backgroundImage: NetworkImage(
                                                  controller
                                                      .userContorller
                                                      .user
                                                      .value
                                                      .data!
                                                      .student!
                                                      .photo!),
                                            ),
                                          ),
                                        ),
                                      ),
                                      /*  InkWell(
                                        child: Container(
                                            height: 30,
                                            width: 30,
                                            padding: EdgeInsets.only(top: 10),
                                            //   color: Colors.red,
                                            transform:
                                                Matrix4.translationValues(
                                                    0, 10, 0),
                                            child: SvgPicture.asset(
                                              "assets/icons/delete.svg",
                                              height: 25,
                                              width: 25,
                                              color: ThemeColor.primaryColor,
                                            )),
                                      ),*/
                                    ],
                                  ),
                                ),
                              ),
                            ];
                          },
                          body: SingleChildScrollView(
                              physics: NeverScrollableScrollPhysics(),
                              child: Container(
                                  decoration: BoxDecoration(
                                    color: ThemeColor.accentColor,
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(40)),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: 60.0,
                                      ),
                                      Text("${state!.data!.displayName}",
                                          style: AppTheme.customHeadline3
                                              .copyWith(
                                                  color:
                                                      ThemeColor.primaryColor,
                                                  fontFamily: AppFonts.large,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 12.sp)),
                                      Text("${state!.data!.contactPhone}",
                                          style: AppTheme.customHeadline3
                                              .copyWith(
                                                  color:
                                                      ThemeColor.primaryColor,
                                                  fontFamily: AppFonts.large,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 12.sp)),
                                    ],
                                  )))),
                    ),
                onLoading: Center(
                  child: CircularProgressIndicator(),
                ),
                onEmpty: Center(child: Text("null"))),
          ),
        ));
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
