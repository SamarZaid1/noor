import 'package:get/instance_manager.dart';
import 'newPassword_controller.dart';



class NewPasswordBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(NewPasswordController());
  }
}
