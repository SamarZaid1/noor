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

import '../../../data/student_time_table.dart';
import '../../../services/student_time_table_api.dart';

class StudentTimeTableController extends GetxController
    with StateMixin<StudentTimeTable> {
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
  StudentTimeTable studentReminderList = StudentTimeTable();
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
    var ruslte = await StudentTimeTableApi()
        .getStudentTimeTable("", userContorller.user.value);
    print("ruslte$ruslte");
    if (ruslte == null) {
      change(studentReminderList, status: RxStatus.empty());
    } else {
      studentReminderList = StudentTimeTable.fromJson(ruslte);
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
