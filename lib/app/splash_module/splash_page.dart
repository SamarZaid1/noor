
import 'package:noor/core/contracts/page.dart';
import 'package:noor/app/splash_module/splalsh_bindings.dart';
import 'package:noor/app/splash_module/splash_view.dart';
import 'package:noor/routes/routes.dart';

// ignore: must_be_immutable
class SplashPage extends Page {
  SplashPage()
      : super(
            name: Routes.spalshPage,
            view: SplashView(),
            binding: SpalshBinding(),
            middlewares: []);
}
