import 'package:noor/core/contracts/page.dart';
import 'package:noor/routes/routes.dart';
import 'student_subjects_bindings.dart';
import 'student_subjects_view.dart';

// ignore: must_be_immutable
class StudentProfilePage extends Page {
  StudentProfilePage()
      : super(
          name: Routes.StudentProfileView,
          view: StudentProfileView(),
          binding: StudentProfileBinding(),
        );
}
