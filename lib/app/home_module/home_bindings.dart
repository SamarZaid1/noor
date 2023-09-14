

import 'package:get/instance_manager.dart';
import 'package:noor/app/event_module/event_controller.dart';
import 'package:noor/app/home_module/home_controller.dart';
import 'package:noor/app/message_module/message_controller.dart';
import 'package:noor/app/splash_module/spalsh_controller.dart';



class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
    Get.put(EventController());
    Get.put(MessageController());
  }
}
