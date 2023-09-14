import 'package:noor/core/contracts/page.dart';
import 'package:noor/routes/routes.dart';
import 'profile_bindings.dart';
import 'profile_view.dart';

// ignore: must_be_immutable
class ProfilePage extends Page {
  ProfilePage()
      : super(
          name: Routes.ProfileView,
          view: ProfileView(),
          binding: ProfileBinding(),
        );
}
