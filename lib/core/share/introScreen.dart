/*
import 'package:noor/core/theme/colors.dart';
import 'package:noor/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nice_intro/intro_screen.dart';
import 'package:nice_intro/intro_screens.dart';
import 'package:noor/services/auth_api.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

List<IntroScreen> pages = [
  IntroScreen(
    title: 'Title',
    headerBgColor: Colors.white,
    imageAsset: "assets/icons/intro1.svg",
    description: "subText",
  ),
  IntroScreen(
    title: 'Title',
    headerBgColor: Colors.white,
    imageAsset: "assets/icons/intro2.svg",
    description: "subText",
  ),
  IntroScreen(
    title: 'Title',
    headerBgColor: Colors.white,
    imageAsset: "assets/icons/intro3.svg",
    description: "subText",
  ),
];

class _IntroPageState extends State<IntroPage> {
  IntroScreens introScreens = IntroScreens(
    footerBgColor:  Colors.white,
    onSkip: () {
      Get.offAllNamed(Routes.LoginPage);
    },
    activeDotColor:ThemeColor.primaryColor,
    textColor:ThemeColor.primaryColor,
    footerRadius: 18.0,
    indicatorType: IndicatorType.CIRCLE,
    slides: pages,
    onDone: () {
      Get.offAllNamed(Routes.LoginPage);
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: introScreens);
  }
}
*/
