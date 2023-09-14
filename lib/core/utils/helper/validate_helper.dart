import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

// must be 2 names at least and each one contains 2..12 character
const Pattern namePattern = r'(^.{2,12}(?: .{2,12})?(?: .{2,12})$)';

const Pattern emailPattern =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

const Pattern phonePattern =
    r"^(009665|9665|\+9665|05|5)(5|0|3|6|4|9|1|8|7)([0-9]{7})$";

const Pattern passwordPattern = r'^.{6,}$';

const Pattern idCardPattern = r'([0-9]{11,11})';

class ValidateHelper {
  static final key = 'attributes.validation';

  final BuildContext context;

  const ValidateHelper.of(this.context);

  String? name(String value) =>
      !RegExp(namePattern.toString()).hasMatch(value) ? "correct".tr : null;

  String? select(dynamic value) => value == null ? "element".tr : null;

  String? required(dynamic value) => (value is String
          ? value.isEmpty
          : value == ""
              ? true
              : value == null)
      ? "fill".tr
      : null;

  String? phone(String? value) =>
      !RegExp(phonePattern.toString()).hasMatch(value!)
          ? "entercorrectphone".tr
          : null;

  String? card(String value) =>
      !RegExp(idCardPattern.toString()).hasMatch(value) ? "nocorrect".tr : null;
  String? email(String? value) =>
      !RegExp(emailPattern.toString()).hasMatch(value!)
          ? "correctemail".tr
          : null;

  // String email(String value) => !RegExp(emailPattern).hasMatch(value)
  //     ? FlutterI18n.translate(context, _key, {'attribute': 'email'})
  //     : null;

  String? password(String value) =>
      !RegExp(passwordPattern.toString()).hasMatch(value) ? "digits".tr : null;
  cPassword(String pass1, String pass2) =>
      (pass1 != pass2) ? "notmatch".tr : null;

  String? price(String value) {
    if (value == "") return "value".tr;

    try {
      if (double.parse(value) < 0) {
        return "morezero".tr;
      } else
        null;
    } catch (e) {
      return "enterpricee".tr;
    }
  }

  String? priceAfter(String priceAfter, String value) {
    price(value);
    price(priceAfter);

    if (double.parse(priceAfter) < double.parse(value))
      return null;
    else
      return "lessamount".tr;
  }

  String? customeValidtor(String value, Pattern pattern) =>
      !RegExp(pattern.toString()).hasMatch(value) ? "valuecorrect".tr : null;
  String? amtValditor(String value, double min, double max) {
    if (double.parse(value) > max) return "moreprice".tr + "${max}";
    if (double.parse(value) < min) return "lessprice".tr + "${max}";

    return null;
  }
}
