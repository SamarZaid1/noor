
import 'package:noor/app/home_module/home_bindings.dart';
import 'package:noor/app/home_module/home_view.dart';
import 'package:noor/core/contracts/page.dart';
import 'package:noor/app/splash_module/splalsh_bindings.dart';
import 'package:noor/app/splash_module/splash_view.dart';
import 'package:noor/routes/routes.dart';

// ignore: must_be_immutable
class HomePage extends Page {
  HomePage()
      : super(
            name: Routes.HomePage,
            view: HomeView(),
            binding: HomeBinding(),
            middlewares: []);
}
