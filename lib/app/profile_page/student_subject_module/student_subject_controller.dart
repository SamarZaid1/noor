import 'dart:async';
import 'package:noor/data/student_reminder.dart';
import 'package:noor/data/student_subject.dart';
import 'package:noor/services/student_reminder_api.dart';
import 'package:noor/services/student_subject_api.dart';
import 'package:noor/services/user_contorller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class StudentSubjectController extends GetxController
    with StateMixin<StudentSubject> {
  @override
  void onInit() async {
    super.onInit();
    await fetchStudentSubject();
  }

  @override
  void dispose() {
    super.dispose();
  }

  final UserContorller userContorller = Get.put(UserContorller());
  StudentSubject studentReminderList = StudentSubject();
  RefreshController refreshController =
      new RefreshController(initialRefresh: false);

  void onRefresh() async {
    await fetchStudentSubject();
    refreshController.refreshCompleted();
  }

  Future fetchStudentSubject() async {
    //  try {
    change(null, status: RxStatus.loading());
    var ruslte = await StudentSubjectApi()
        .getStudenSubject("", userContorller.user.value);
    print("ruslte$ruslte");
    if (ruslte == null) {
      change(studentReminderList, status: RxStatus.empty());
    } else {
      studentReminderList = StudentSubject.fromJson(ruslte);
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
