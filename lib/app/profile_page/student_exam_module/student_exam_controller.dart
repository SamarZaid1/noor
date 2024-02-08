import 'dart:async';
import 'package:noor/data/student_exam.dart';
import 'package:noor/data/student_reminder.dart';
import 'package:noor/data/student_subject.dart';
import 'package:noor/services/student_exam_api.dart';
import 'package:noor/services/student_reminder_api.dart';
import 'package:noor/services/student_subject_api.dart';
import 'package:noor/services/user_contorller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class StudentExamController extends GetxController
    with StateMixin<StudentExam> {
  final UserContorller controller = Get.put(UserContorller());
  //TabController? tabController;
  @override
  void onInit() async {
    super.onInit();
    //tabController = new TabController(length: 2,);
    await fetchStudentExam();
  }

  @override
  void dispose() {
    // tabController!.dispose();
    super.dispose();
  }

  final UserContorller userContorller = Get.put(UserContorller());
  StudentExam studentReminderList = StudentExam();
  // final bookChoose = StudentReminder().obs;
  RefreshController refreshController =
      new RefreshController(initialRefresh: false);

  void onRefresh() async {
    await fetchStudentExam();
    refreshController.refreshCompleted();
  }

  Future fetchStudentExam() async {
    //  try {
    change(null, status: RxStatus.loading());
    var ruslte = await StudentExamApi()
        .getStudentExam("", userContorller.user.value);
    print("ruslte$ruslte");
    if (ruslte == null) {
      change(studentReminderList, status: RxStatus.empty());
    } else {
      studentReminderList = StudentExam.fromJson(ruslte);
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
