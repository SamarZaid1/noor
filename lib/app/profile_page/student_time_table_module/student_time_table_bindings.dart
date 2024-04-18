import 'package:get/instance_manager.dart';
import 'student_time_table_controller.dart';



class StudentTimeTableBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(StudentTimeTableController());
  }
}
