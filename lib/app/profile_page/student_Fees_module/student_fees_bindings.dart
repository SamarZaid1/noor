import 'package:get/instance_manager.dart';
import 'student_fees_controller.dart';



class StudentFeesBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(StudentFeesController());
  }
}
