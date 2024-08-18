
import 'package:flutter/material.dart';
import 'package:noor/core/theme/colors.dart';
import 'package:noor/core/theme/text_font_family.dart';
import 'package:sizer/sizer.dart';

class AppTheme {
  AppTheme._();

  static const String appFontFamily = AppFonts.cairo;
  static TextStyle customSubtitle1 = TextStyle(
      color: ThemeColor.textPrimaryColor,
      fontSize: 16.sp,
      fontFamily: AppFonts.cairo,
      fontWeight: FontWeight.bold);
  static TextStyle customSubtitle2 = TextStyle(
      color: ThemeColor.textAccentColor,
      fontSize: 16.sp,
      fontFamily: AppFonts.cairo,
      fontWeight: FontWeight.bold);
  static TextStyle customBodyText1 = const TextStyle(
    fontFamily: AppFonts.cairo,
    color: ThemeColor.textAccentColor,
  );
  static TextStyle customBodyText2 = const TextStyle(
    fontFamily: AppFonts.cairo,
    color: ThemeColor.textPrimaryColor,
  );
  static TextStyle customHeadline6 = TextStyle(
      color: ThemeColor.buttonTextColor,
      fontSize: 14.sp,
      fontFamily: AppFonts.cairo,
      fontWeight: FontWeight.bold);
  static TextStyle customHeadline5 = TextStyle(
      color: ThemeColor.textPrimaryColor,
      fontSize: 16.sp,
      fontFamily: AppFonts.cairo,
      fontWeight: FontWeight.bold);
  static TextStyle customHeadline4 = TextStyle(
      color: ThemeColor.blackColor.withOpacity(0.7),
      fontSize: 14.sp,
      fontFamily: AppFonts.cairo,
      fontWeight: FontWeight.bold);
  static TextStyle customHeadline3 = TextStyle(
      color: ThemeColor.textPrimaryColor,
      fontSize: 12.sp,
      fontFamily: AppFonts.cairo,
      fontWeight: FontWeight.bold);
  static TextStyle customHeadline2 = TextStyle(
      color: ThemeColor.hintColor,
      fontFamily: AppFonts.cairo,
      fontSize: 12.sp,
      fontWeight: FontWeight.bold);
  static TextStyle customHeadline1 = TextStyle(
      color: ThemeColor.errorColor,
      fontSize: 10.sp,
      fontFamily: AppFonts.cairo,
      fontWeight: FontWeight.bold);

  static ThemeData darkTheme = ThemeData.dark();

  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.light(primary: ThemeColor.grayColor),
    buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          //primary: ThemeColor.grayColor,
          backgroundColor: ThemeColor.greyColor,
          textStyle: TextStyle(
            fontSize: 12,
            fontFamily: AppFonts.cairo,
            fontWeight: FontWeight.bold,
            color: ThemeColor.grayColor,
          ),
        )),
    //CUSTOMIZE showDatePicker Colors
   /* colorScheme: ColorScheme.light(
      background:ThemeColor.primaryColor ,
        primary:ThemeColor.secondprimaryColor),
    buttonTheme: ButtonThemeData(
      buttonColor:ThemeColor.secondprimaryColor ,
        textTheme: ButtonTextTheme.primary),*/

    checkboxTheme: CheckboxThemeData(
      checkColor: MaterialStateProperty.all(Colors.white),
      fillColor: MaterialStateProperty.all(ThemeColor.grayColor),
    ),
    primaryColor: ThemeColor.grayColor,
    splashColor: ThemeColor.primaryColor,
    scaffoldBackgroundColor: ThemeColor.bgAccentColor,
    hintColor: ThemeColor.hintColor,
    dividerColor: ThemeColor.grayColor,
    dividerTheme: customDividerTheme(),
    indicatorColor: ThemeColor.grayColor,
    // bottomAppBarColor: ThemeColor.primaryColor,
    // errorColor: ThemeColor.errorColor,
    // backgroundColor: ThemeColor.bgAccentColor,
    fontFamily: appFontFamily,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    unselectedWidgetColor: ThemeColor.primaryColor,
    //selectedRowColor: ThemeColor.accentColor,
    //
   /* colorScheme: const ColorScheme.light().copyWith(
      primary: ThemeColor.primaryColor.withAlpha(220),
      secondary: ThemeColor.accentColor,
    ),*/
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(),
      labelStyle: TextStyle(
          color: ThemeColor.grayColor,
          fontSize: 24.0
      ),
    ),
    //
    cardColor: ThemeColor.cardColor,
    cardTheme: customCardTheme(),
    //
    appBarTheme: customAppBarTheme(),
    //
    snackBarTheme: customSnackBarTheme(),
    //

    //
    iconTheme: customIconTheme(),
    //
    outlinedButtonTheme: customOutlinedButton(),
    //
   // textButtonTheme: TextButtonThemeData(style: customTextButtonTheme()),
    //
    elevatedButtonTheme:
        ElevatedButtonThemeData(style: customTextButtonTheme()),
    //
    textTheme: customTextThem(),
    //

    //
   // timePickerTheme: customTimePicker(),
    //
    bottomSheetTheme: customBottomSheet(),
    //
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: ThemeColor.grayColor,
    ),
    //
    // tabBarTheme:  TabBarTheme(
    //   labelColor: ThemeColor.primaryColor.withOpacity(50),
    //   labelStyle: const TextStyle(color: ThemeColor.textAccentColor,fontSize: 20,),
    // ),
    //
  );

  static customAppBarTheme() {
    return AppBarTheme(
      backgroundColor: ThemeColor.accentColor,
      elevation: 0,
      centerTitle: true,
      foregroundColor: ThemeColor.appBarAccentColor,
      titleTextStyle: customSubtitle1,
      iconTheme: const IconThemeData(color: Colors.black),
    );
  }

  static customCardTheme() {
    return CardTheme(
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      color: ThemeColor.cardColor,
    );
  }

  static customSnackBarTheme() {
    return const SnackBarThemeData(
      backgroundColor: ThemeColor.primaryColor,
    );
  }

  static customInputTextTheme() {
    return InputDecorationTheme(
      fillColor: ThemeColor.editTextColor,
      filled: true,
      contentPadding: const EdgeInsets.all(2),
      isDense: true,
      errorMaxLines: 2,
      focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide:
              const BorderSide(color: ThemeColor.grayColor, width: 1.5)),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide:
            const BorderSide(color: ThemeColor.grayColor, width: 1.5),
      ),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide:
              const BorderSide(color: ThemeColor.grayColor, width: 1.5)),
      errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          borderSide: BorderSide(width: 1.5, color: ThemeColor.errorColor)),
      errorStyle: customHeadline1,
      hintStyle: customHeadline2,
      labelStyle: customHeadline4,
      focusColor: ThemeColor.grayColor,
    );
  }

  static customIconTheme() {
    return const IconThemeData(
      color: ThemeColor.iconPrimaryColor,
    );
  }

  static customOutlinedButton() {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        backgroundColor: ThemeColor.primaryColor,
        side: const BorderSide(
          color: ThemeColor.primaryColor,
          style: BorderStyle.solid,
          width: 1,
        ),
        shape: const StadiumBorder(),
      ),
    );
  }

  static customTextButtonTheme() {
    return TextButton.styleFrom(
        backgroundColor: ThemeColor.buttonTextColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        padding: const EdgeInsets.all(2),
        textStyle: customHeadline6);
  }

  static customCheckBoxThem() {
    return CheckboxThemeData(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      visualDensity: VisualDensity.compact,
      fillColor: MaterialStateProperty.all<Color>(
        ThemeColor.accentColor,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
      ),
    );
  }

 /* static customTimePicker() {
    return TimePickerThemeData(
        dialTextColor: ThemeColor.accentColor,
        dialBackgroundColor: ThemeColor.secondprimaryColor,
        hourMinuteTextColor: ThemeColor.secondprimaryColor,
        backgroundColor:ThemeColor.secondprimaryColor ,
        dayPeriodTextColor:  ThemeColor.accentColor,
        dayPeriodColor:ThemeColor.primaryColor ,
        dialHandColor: ThemeColor.primaryColor,
        hourMinuteColor: ThemeColor.accentColor,
        entryModeIconColor: ThemeColor.accentColor,
        helpTextStyle: customHeadline3);
  }*/

  static customBottomSheet() {
    return const BottomSheetThemeData(
      backgroundColor: ThemeColor.accentColor,
      modalBackgroundColor: ThemeColor.accentColor,
      elevation: 2,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
    );
  }

  static customTextThem() {
    return TextTheme(
      // subtitle1: customSubtitle1,
      // subtitle2: customSubtitle2,
      // bodyText1: customBodyText1,
      // bodyText2: customBodyText2,
      // headline1: customHeadline1,
      // headline2: customHeadline2,
      // headline3: customHeadline3,
      // headline4: customHeadline4,
      // headline5: customHeadline5,
      // headline6: customHeadline6,
    );
  }

  static customDividerTheme() {
    return const DividerThemeData(
      color: ThemeColor.primaryColor,
      thickness: 3,
    );
  }
}
