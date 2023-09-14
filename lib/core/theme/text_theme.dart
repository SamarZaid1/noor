
import 'package:flutter/cupertino.dart';
import 'package:noor/core/theme/app_theme.dart';
import 'package:noor/core/theme/colors.dart';
import 'package:noor/core/theme/text_font_family.dart';

class ThemeText {
  ThemeText._();

  static TextStyle errorTextStyle() {
    return AppTheme.lightTheme.textTheme.headline1!;
  }

  static TextStyle hintTextStyle() {
    return AppTheme.lightTheme.textTheme.headline2!;
  }

  static TextStyle smallestTextStyle({Color? txtClr}) {
    return AppTheme.lightTheme.textTheme.headline1!.copyWith(
      fontFamily: AppFonts.cairo,
      color: txtClr ?? ThemeColor.textAccentColor,
    );
  }

  static TextStyle inputTextStyle({Color? txtClr}) {
    return AppTheme.lightTheme.textTheme.headline4!
        .copyWith(
        fontFamily: AppFonts.cairo,
        color: txtClr ?? ThemeColor.textPrimaryColor);
  }

  static TextStyle buttonTextStyle({Color? txtClr}) {
    return AppTheme.lightTheme.textTheme.headline4!
        .copyWith(
        fontFamily: AppFonts.cairo,
        color: txtClr ?? ThemeColor.buttonTextColor);
  }

  static TextStyle textViewStyle({Color? txtClr}) {
    return AppTheme.lightTheme.textTheme.headline3!.copyWith(
      fontFamily: AppFonts.cairo,
      color: txtClr,
    );
  }

  static TextStyle largeTextViewStyle({Color? txtClr}) {
    return AppTheme.lightTheme.textTheme.headline5!.copyWith(
        fontFamily: AppFonts.large,
        color: txtClr);
  }

  static TextStyle titleTextStyle({Color? txtClr}) {
    return AppTheme.lightTheme.textTheme.subtitle2!.copyWith(
        fontFamily: AppFonts.large,
        color: txtClr);
  }

  static TextStyle checkBoxText({Color? txtClr}) {
    return AppTheme.lightTheme.textTheme.headline3!.copyWith(
        fontFamily: AppFonts.cairo,
        color: txtClr);
  }

  static TextStyle listText({Color? txtClr}) {
    return AppTheme.lightTheme.textTheme.headline3!.copyWith(
        fontFamily: AppFonts.cairo,
        color: txtClr);
  }
}
