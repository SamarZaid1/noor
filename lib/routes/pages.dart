import 'package:get/get.dart';
import 'package:noor/app/auth/login_module/login_page.dart';
import 'package:noor/app/event_module/event_page.dart';
import 'package:noor/app/home_module/home_page.dart';
import 'package:noor/app/news_module/news_page.dart';
import 'package:noor/app/profile_module/profile_page.dart';
import 'package:noor/app/profile_page/student_exam_module/student_exam_page.dart';
import 'package:noor/app/profile_page/student_profile_module/student_profile_page.dart';
import 'package:noor/app/profile_page/student_subject_module/student_subjects_page.dart';
import 'package:noor/app/splash_module/splash_page.dart';

import '../app/profile_page/student_Fees_module/student_fees_page.dart';
import '../app/profile_page/student_exam_result_module/student_exam_result_page.dart';

class AppPages {
  static List<GetPage> pages = [
    SplashPage(),
    LoginPage(),
    HomePage(),
    EventPage(),
    ProfilePage(),
    StudentProfilePage(),
    StudentSubjectPage(),
    NewsPage(),
    StudentExamPage(),
    StudentExamResultPage(),
    StudentFeesPage(),
  ];
}
