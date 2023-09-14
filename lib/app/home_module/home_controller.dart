import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:noor/services/user_contorller.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class HomeController extends GetxController {
  GlobalKey<SliderDrawerState> sliderKey = GlobalKey<SliderDrawerState>();

  final UserContorller userContorller = Get.put(UserContorller());

  var currentIndex = 0.obs;
  @override
  void onInit() async {
    super.onInit();

  }


}
