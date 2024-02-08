import 'package:noor/core/contracts/page.dart';
import 'package:noor/routes/routes.dart';
import 'student_exam_result_bindings.dart';
import 'student_exam_result_view.dart';

// ignore: must_be_immutable
class StudentExamResultPage extends Page {
  StudentExamResultPage()
      : super(
          name: Routes.StudentExamResultView,
          view: StudentExamResultView(),
          binding: StudentExamResultBinding(),
        );
}
