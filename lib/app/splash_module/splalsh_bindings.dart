

import 'package:get/instance_manager.dart';
import 'package:noor/app/splash_module/spalsh_controller.dart';



class SpalshBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(SpalshController());
  }
}
