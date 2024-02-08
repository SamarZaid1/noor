import 'package:noor/core/contracts/page.dart';
import 'package:noor/routes/routes.dart';
import 'student_subjects_bindings.dart';
import 'student_subjects_view.dart';

// ignore: must_be_immutable
class StudentSubjectPage extends Page {
  StudentSubjectPage()
      : super(
          name: Routes.StudentSubjectView,
          view: StudentSubjectView(),
          binding: StudentSubjectBinding(),
        );
}
