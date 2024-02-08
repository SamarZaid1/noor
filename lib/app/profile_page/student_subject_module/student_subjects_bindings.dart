import 'package:get/instance_manager.dart';
import 'student_subject_controller.dart';



class StudentSubjectBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(StudentSubjectController());
  }
}
