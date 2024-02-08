import 'dart:async';
import 'package:noor/data/student_fee.dart';
import 'package:noor/data/student_reminder.dart';
import 'package:noor/data/student_subject.dart';
import 'package:noor/services/student_reminder_api.dart';
import 'package:noor/services/student_subject_api.dart';
import 'package:noor/services/user_contorller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../services/student_fee_api.dart';

class StudentFeesController extends GetxController with StateMixin<StudentFee> {
  final UserContorller userContorller = Get.put(UserContorller());
  @override
  void onInit() async {
    super.onInit();
    await fetchStudentFees();
  }

  @override
  void dispose() {
    super.dispose();
  }

  StudentFee studentFeeList = StudentFee();
  // final bookChoose = StudentReminder().obs;
  RefreshController refreshController =
      new RefreshController(initialRefresh: false);

  void onRefresh() async {
    await fetchStudentFees();
    refreshController.refreshCompleted();
  }

  Future fetchStudentFees() async {
    //  try {
    change(null, status: RxStatus.loading());
    var ruslte =
        await StudentFeeApi().getStudentFee("", userContorller.user.value);
    print("ruslte$ruslte");
    if (ruslte == null) {
      change(studentFeeList, status: RxStatus.empty());
    } else {
      studentFeeList = StudentFee.fromJson(ruslte);
      if (studentFeeList == true) {
        change(studentFeeList, status: RxStatus.empty());
      } else {
        change(studentFeeList, status: RxStatus.success());
      }
    }
    /* } catch (e) {
      throw e;
    }*/
  }
}
