import 'dart:async';
import 'package:noor/app/home_module/home_view.dart';
import 'package:noor/core/share/introScreen.dart';
import 'package:noor/data/steps_model.dart';
import 'package:noor/services/auth_api.dart';
import 'package:noor/services/user_contorller.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:noor/core/contracts/controller.dart';
import 'package:noor/routes/routes.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter/material.dart';

class SpalshController extends Contorller {
  final UserContorller controller = Get.put(UserContorller());

  @override
  void onInit() {
    loadingTime();
    super.onInit();
  }

  final splashDelay = kDebugMode ? 3 : 6;

  loadingTime() async {
    Timer(Duration(seconds: splashDelay), () async {
      await controller.checkIsLogined();
      //Get.offAllNamed(Routes.LoginPage);
    });
    /*  GetStorage().read('is_viewIntro') == null ?
    await GetStorage().write('is_viewIntro', false)
        : null;
    Timer(Duration(seconds: splashDelay), () async {
       await controller
          .checkIsLogined()
          .then((value) => print("Done Checking login auth!!!!!!!!!!!"));
      if (GetStorage().read('is_viewIntro')) {
        await controller.checkIsLogined();
      } else {
        await GetStorage().write('is_viewIntro', true);
        Get.to(IntroPage());
      }
    });*/
  }
}
