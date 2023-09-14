import 'package:get/get.dart';
import 'package:intl/intl.dart' as intl;

extension DateTimeEx on DateTime? {
  String showFormattedDate({
    bool withTime = false,
    bool onlyTime = false,
    bool dateWithDayName = false,
  }) {
    if (onlyTime) {
      return intl.DateFormat('hh:mm a', Get.locale!.languageCode).format(this!);
    }
    if (withTime) {
      return intl.DateFormat('hh:mm a  dd, MM, yyyy', Get.locale!.languageCode)
          .format(this!);
    }

    if (dateWithDayName) {
      return intl.DateFormat('EE, dd, MM, yyyy', Get.locale!.languageCode)
          .format(this!);
    }
    return intl.DateFormat('yyyy-MM-dd', Get.locale!.languageCode)
        .format(this!);
  }

  bool get checkDateTimeIsPassed {
    if (this == null) return false;
    if (this!.isBefore(DateTime.now())) {
      return true;
    }
    return false;
  }

  String get getDayName {
    return intl.DateFormat.EEEE(Get.locale!.languageCode).format(this!);
  }
}
