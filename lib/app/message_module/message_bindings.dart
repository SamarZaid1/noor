

import 'package:get/instance_manager.dart';
import 'package:noor/app/event_module/event_controller.dart';
import 'package:noor/app/splash_module/spalsh_controller.dart';



class  MessageBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(EventController());
  }
}
