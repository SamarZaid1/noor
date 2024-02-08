import 'package:get/instance_manager.dart';
import 'student_exam_result_controller.dart';



class StudentExamResultBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(StudentExamResultController());
  }
}
