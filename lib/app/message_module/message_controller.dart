import 'dart:async';
import 'package:noor/app/news_module/news_controller.dart';
import 'package:noor/data/student_reminder.dart';
import 'package:noor/services/student_reminder_api.dart';
import 'package:noor/services/user_contorller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class MessageController extends GetxController
    with StateMixin<StudentReminder> {
  final UserContorller controller = Get.put(UserContorller());
  final NewsController news_controller = Get.find();
  //TabController? tabController;
  @override
  void onInit() async {
    super.onInit();
    //tabController = new TabController(length: 2,);
    await fetchStudentReminder();
    await news_controller.fetchStudentNews();
  }

  @override
  void dispose() {
    // tabController!.dispose();
    super.dispose();
  }

  final UserContorller userContorller = Get.put(UserContorller());
  StudentReminder studentReminderList = StudentReminder();
  // final bookChoose = StudentReminder().obs;
  RefreshController refreshController =
      new RefreshController(initialRefresh: false);

  void onRefresh() async {
    await fetchStudentReminder();
    refreshController.refreshCompleted();
  }

  Future fetchStudentReminder() async {
    //  try {
    change(null, status: RxStatus.loading());
    var ruslte = await StudentReminderApi()
        .getStudentReminder("", userContorller.user.value);
    print("soso$ruslte");
    if (ruslte == null) {
      change(studentReminderList, status: RxStatus.empty());
    } else {
      studentReminderList = StudentReminder.fromJson(ruslte);
      if (studentReminderList == true) {
        change(studentReminderList, status: RxStatus.empty());
      } else {
        change(studentReminderList, status: RxStatus.success());
      }
    }
    /* } catch (e) {
      throw e;
    }*/
  }
}
