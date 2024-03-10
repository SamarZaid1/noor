import 'package:noor/core/contracts/page.dart';
import 'package:noor/routes/routes.dart';

import 'newPassword_bindings.dart';
import 'newPassword_view.dart';

// ignore: must_be_immutable
class NewPasswordPage extends Page {
  NewPasswordPage()
      : super(
          name: Routes.NewPasswordPage,
          view: NewPasswordView(),
          binding: NewPasswordBinding(),
        );
}
