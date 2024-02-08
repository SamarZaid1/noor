import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noor/core/theme/app_theme.dart';
import 'package:noor/core/theme/theme_service.dart';
import 'package:noor/core/values/translation.dart';
import 'package:noor/routes/pages.dart';
import 'package:noor/routes/routes.dart';
import 'package:sizer/sizer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
      // DevicePreview(enabled: !kReleaseMode,
      //     builder: (context) =>
      Sizer(builder: (context, orientation, deviceType) {
    return GetMaterialApp(
      // initialBinding: HomeBinding(),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.spalshPage,
      defaultTransition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 200),
      translations: Translation(),
      locale: Locale('en'),
      supportedLocales: [
        Locale('en', ''),
        Locale('ar', ''), // arabic, no country code
      ],
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeService().theme, // Add the locale here
      getPages: AppPages.pages,
    );
  })
      //)
      );
}
