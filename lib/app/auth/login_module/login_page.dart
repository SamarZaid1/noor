import 'package:noor/core/contracts/page.dart';
import 'package:noor/routes/routes.dart';

import 'login_bindings.dart';
import 'login_view.dart';

// ignore: must_be_immutable
class LoginPage extends Page {
  LoginPage()
      : super(
          name: Routes.LoginPage,
          view: LoginView(),
          binding: LoginBinding(),
        );
}
