import 'dart:async';
import 'package:noor/app/home_module/home_view.dart';
import 'package:noor/core/share/introScreen.dart';
import 'package:noor/data/steps_model.dart';
import 'package:noor/data/student_event.dart';
import 'package:noor/services/auth_api.dart';
import 'package:noor/services/student_event_api.dart';
import 'package:noor/services/user_contorller.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:noor/core/contracts/controller.dart';
import 'package:noor/routes/routes.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class EventController extends Contorller with StateMixin<StudentEvent> {
  final searchTextController = TextEditingController();
  int selectBtn = 0;
  int tag = 1;
  List<String> options = [
    'ALL',
    'Poular',
    'New',
  ];
  @override
  void onInit() async {
    super.onInit();
    await fetchStudentEvent();
  }

  @override
  void dispose() {
    super.dispose();
  }

  final UserContorller userContorller = Get.put(UserContorller());
  StudentEvent studentEventList = StudentEvent();

  Future fetchStudentEvent() async {
    try {
      change(null, status: RxStatus.loading());
      var ruslte = await StudentEventApi()
          .getStudentEvent("", userContorller.user.value);
      print("sose$ruslte");
      if (ruslte == null) {
        change(studentEventList, status: RxStatus.empty());
      } else {
        studentEventList = StudentEvent.fromJson(ruslte);
        if (studentEventList == true) {
          change(studentEventList, status: RxStatus.empty());
        } else {
          change(studentEventList, status: RxStatus.success());
        }
      }
    } catch (e) {
      throw e;
    }
  }
}
