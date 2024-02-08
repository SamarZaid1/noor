import 'package:get/instance_manager.dart';
import 'student_exam_controller.dart';



class StudentExamBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(StudentExamController());
  }
}
