import 'package:noor/core/contracts/page.dart';
import 'package:noor/routes/routes.dart';
import 'student_exam_bindings.dart';
import 'student_exam_view.dart';

// ignore: must_be_immutable
class StudentExamPage extends Page {
  StudentExamPage()
      : super(
          name: Routes.StudentExamView,
          view: StudentExamView(),
          binding: StudentExamBinding(),
        );
}
