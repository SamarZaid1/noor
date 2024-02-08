import 'package:flutter_svg/flutter_svg.dart';
import 'package:noor/core/contracts/view.dart';
import 'package:noor/core/theme/app_theme.dart';
import 'package:noor/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:noor/app/splash_module/spalsh_controller.dart';
import 'package:sizer/sizer.dart';

class SplashView extends View1<SpalshController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor.accentColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /*SvgPicture.asset(
              "assets/icons/logo.svg",
            ),*/
            Image.asset(
              "assets/logo.png",
              height: 200.0,
            )
          ],
        ),
      ),
    );
  }
}
