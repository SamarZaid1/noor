import 'package:noor/core/contracts/page.dart';
import 'package:noor/routes/routes.dart';
import 'student_time_table_bindings.dart';
import 'student_time_table_view.dart';

// ignore: must_be_immutable
class StudentTimeTablePage extends Page {
  StudentTimeTablePage()
      : super(
          name: Routes.StudentTimeTableView,
          view: StudentTimeTableView(),
          binding: StudentTimeTableBinding(),
        );
}
