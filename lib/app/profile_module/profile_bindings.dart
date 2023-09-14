import 'package:get/instance_manager.dart';
import 'profile_controller.dart';



class ProfileBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(ProfileController());
  }
}
