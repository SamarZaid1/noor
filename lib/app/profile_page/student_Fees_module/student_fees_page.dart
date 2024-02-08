import 'package:noor/core/contracts/page.dart';
import 'package:noor/routes/routes.dart';
import 'student_fees_bindings.dart';
import 'student_fees_view.dart';

// ignore: must_be_immutable
class StudentFeesPage extends Page {
  StudentFeesPage()
      : super(
          name: Routes.StudentFeesView,
          view: StudentFeesView(),
          binding: StudentFeesBinding(),
        );
}
