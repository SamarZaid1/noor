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

class  MessageController extends  GetxController with GetSingleTickerProviderStateMixin{
  final UserContorller controller = Get.put(UserContorller());
  TabController? tabController;
  @override
  void onInit() {
    super.onInit();
    tabController = new TabController(length: 2, vsync: this);
  }
  @override
  void dispose() {
    tabController!.dispose();
    super.dispose();
  }
}
