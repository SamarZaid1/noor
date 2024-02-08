import 'dart:async';
import 'package:noor/data/student_news.dart';
import 'package:noor/data/student_reminder.dart';
import 'package:noor/services/student_news_api.dart';
import 'package:noor/services/student_reminder_api.dart';
import 'package:noor/services/user_contorller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class NewsController extends GetxController with StateMixin<StudentNews> {
  final UserContorller controller = Get.put(UserContorller());

  @override
  void onInit() async {
    super.onInit();

    // await fetchStudentNews();
  }

  @override
  void dispose() {
    super.dispose();
  }

  final UserContorller userContorller = Get.put(UserContorller());
  StudentNews studentNewsList = StudentNews();

  RefreshController refreshController =
      new RefreshController(initialRefresh: false);

  void onRefresh() async {
    await fetchStudentNews();
    refreshController.refreshCompleted();
  }

  Future fetchStudentNews() async {
    try {
      change(null, status: RxStatus.loading());
      var ruslte =
          await StudentNewsApi().getStudentNews("", userContorller.user.value);
      print("sos$ruslte");
      if (ruslte == null) {
        change(studentNewsList, status: RxStatus.empty());
      } else {
        studentNewsList = StudentNews.fromJson(ruslte);
        if (studentNewsList == true) {
          change(studentNewsList, status: RxStatus.empty());
        } else {
          change(studentNewsList, status: RxStatus.success());
        }
      }
    } catch (e) {
      throw e;
    }
  }
}
