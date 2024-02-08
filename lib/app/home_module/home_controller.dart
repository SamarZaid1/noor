import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:noor/app/event_module/event_controller.dart';
import 'package:noor/app/news_module/news_controller.dart';
import 'package:noor/app/profile_page/student_profile_module/student_profile_controller.dart';
import 'package:noor/app/profile_page/student_subject_module/student_subject_controller.dart';
import 'package:noor/services/user_contorller.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class HomeController extends GetxController {
  GlobalKey<SliderDrawerState> sliderKey = GlobalKey<SliderDrawerState>();

  final UserContorller userContorller = Get.put(UserContorller());
  final NewsController newsController = Get.put(NewsController());
  final EventController eventController = Get.put(EventController());
  final StudentSubjectController subjectController =
      Get.put(StudentSubjectController());
  final StudentProfileController studentProfileController =
      Get.put(StudentProfileController());
  var currentIndex = 0.obs;
  @override
  void onInit() async {
    super.onInit();
  }
}
