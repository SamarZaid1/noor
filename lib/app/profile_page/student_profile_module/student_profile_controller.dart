import 'package:noor/core/contracts/controller.dart';
import 'package:noor/data/student_datat.dart';
import 'package:noor/services/student_api.dart';
import 'package:noor/services/user_contorller.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class StudentProfileController extends Contorller with StateMixin<Student> {
  @override
  void onInit() async {
    super.onInit();
    await fetchStudent();
  }

  @override
  void dispose() {
    // tabController!.dispose();
    super.dispose();
  }

  final UserContorller userContorller = Get.put(UserContorller());
  Student student = Student();
  RefreshController refreshController =
      new RefreshController(initialRefresh: false);

  void onRefresh() async {
    await fetchStudent();
    refreshController.refreshCompleted();
  }

  Future fetchStudent() async {
    //  try {
    change(null, status: RxStatus.loading());
    var ruslte = await StudentApi().getStudent("", userContorller.user.value);
    print("ruslte$ruslte");
    if (ruslte == null) {
      change(student, status: RxStatus.empty());
    } else {
      student = Student.fromJson(ruslte);
      if (student.isNull) {
        change(student, status: RxStatus.empty());
      } else {
        change(student, status: RxStatus.success());
      }
    }
  }
  /* } catch (e) {
      throw e;
    }*/
}
