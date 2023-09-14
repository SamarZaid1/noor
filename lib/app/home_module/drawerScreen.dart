import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:noor/core/theme/app_theme.dart';
import 'package:noor/core/theme/colors.dart';
import 'package:noor/routes/routes.dart';
import 'package:noor/services/user_contorller.dart';
import 'package:sizer/sizer.dart';

class DrawerScreen extends StatefulWidget {
  UserContorller userContorller;
  DrawerScreen(this.userContorller);
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor.primaryColor,
      body: Container(
        color: ThemeColor.primaryColor,
        padding: EdgeInsets.only(top: 50, bottom: 70, left: 20,right:20 ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  child: CircleAvatar(
                    radius: 18,
                    child: SvgPicture.asset(
                      "assets/book.svg",
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "welcome You",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Text("Ali Ahmed ",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold))
                  ],
                )
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            InkWell(
              onTap: () {
                Get.toNamed(Routes.NewPassPage);
              },
              child: Row(
                children: [
                  Icon(
                    Icons.lock_open_rounded,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'chanage PassWord',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            InkWell(
              child: Row(
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Profile',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              onTap: () {
                Get.toNamed(Routes.ProfilePage);
              },
            ),
            SizedBox(
              height: 2.h,
            ),
            InkWell(
              child: Row(
                children: [
                  Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'LogOut',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              onTap: () {
                AwesomeDialog(
                  context: context,
                  animType: AnimType.scale,
                  dialogType: DialogType.warning,
                  dialogBackgroundColor: ThemeColor.accentColor,
                  desc: 'Do you went to exit app?',
                  btnCancelText: "No",
                  btnCancelColor: ThemeColor.primaryColor,
                  btnOkColor: ThemeColor.grayColor,
                  btnOkText: "yes",
                  descTextStyle: AppTheme.customHeadline3.copyWith(
                      color: ThemeColor.primaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 10.sp),
                  btnOkOnPress: () async {
                    widget.userContorller.logOut();
                  },
                  btnCancelOnPress: () {
                    Get.back();
                  },
                )..show();
              },
            )
          ],
        ),
      ),
    );
  }
}
