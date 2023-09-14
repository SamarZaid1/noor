import 'package:get/instance_manager.dart';
import 'student_profile_controller.dart';



class StudentProfileBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(StudentProfileController());
  }
}
