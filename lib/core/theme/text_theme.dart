
import 'package:flutter/cupertino.dart';
import 'package:noor/core/theme/app_theme.dart';
import 'package:noor/core/theme/colors.dart';
import 'package:noor/core/theme/text_font_family.dart';

class ThemeText {
  ThemeText._();

  static TextStyle errorTextStyle() {
    return AppTheme.lightTheme.textTheme.displayLarge!;
  }

  static TextStyle hintTextStyle() {
    return AppTheme.lightTheme.textTheme.displayMedium!;
  }

  static TextStyle smallestTextStyle({Color? txtClr}) {
    return AppTheme.lightTheme.textTheme.displayLarge!.copyWith(
      fontFamily: AppFonts.cairo,
      color: txtClr ?? ThemeColor.textAccentColor,
    );
  }

  static TextStyle inputTextStyle({Color? txtClr}) {
    return AppTheme.lightTheme.textTheme.headlineMedium!
        .copyWith(
        fontFamily: AppFonts.cairo,
        color: txtClr ?? ThemeColor.textPrimaryColor);
  }

  static TextStyle buttonTextStyle({Color? txtClr}) {
    return AppTheme.lightTheme.textTheme.headlineMedium!
        .copyWith(
        fontFamily: AppFonts.cairo,
        color: txtClr ?? ThemeColor.buttonTextColor);
  }

  static TextStyle textViewStyle({Color? txtClr}) {
    return AppTheme.lightTheme.textTheme.displaySmall!.copyWith(
      fontFamily: AppFonts.cairo,
      color: txtClr,
    );
  }

  static TextStyle largeTextViewStyle({Color? txtClr}) {
    return AppTheme.lightTheme.textTheme.headlineSmall!.copyWith(
        fontFamily: AppFonts.large,
        color: txtClr);
  }

  static TextStyle titleTextStyle({Color? txtClr}) {
    return AppTheme.lightTheme.textTheme.titleSmall!.copyWith(
        fontFamily: AppFonts.large,
        color: txtClr);
  }

  static TextStyle checkBoxText({Color? txtClr}) {
    return AppTheme.lightTheme.textTheme.displaySmall!.copyWith(
        fontFamily: AppFonts.cairo,
        color: txtClr);
  }

  static TextStyle listText({Color? txtClr}) {
    return AppTheme.lightTheme.textTheme.displaySmall!.copyWith(
        fontFamily: AppFonts.cairo,
        color: txtClr);
  }
}
