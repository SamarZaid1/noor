import 'package:get/get.dart';
import 'package:noor/app/auth/login_module/login_page.dart';
import 'package:noor/app/event_module/event_page.dart';
import 'package:noor/app/home_module/home_page.dart';
import 'package:noor/app/profile_module/profile_page.dart';
import 'package:noor/app/profile_page/student_profile_module/student_profile_page.dart';
import 'package:noor/app/splash_module/splash_page.dart';

class AppPages {
  static List<GetPage> pages = [
    SplashPage(),
    LoginPage(),
    HomePage(),
    EventPage(),
    ProfilePage(),
    StudentProfilePage(),
/*  ForgetPage(),
    NewPassPage(),
    RegistrationPage(),
    ProfilePage()*/
  ];
}
