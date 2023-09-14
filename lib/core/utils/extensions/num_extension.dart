import 'package:intl/intl.dart' as intl;

extension NumExtension on num? {
  ///... format numbers
  String get formatNumbersWithSeparators {
    var formatter = intl.NumberFormat('###,###,###');
    return formatter.format(this ?? 0);
  }

  String get formatDoubleNumberDecimal {
    if (this == null) return '';
    intl.NumberFormat formatter = intl.NumberFormat();
    formatter.minimumFractionDigits = 0;
    formatter.maximumFractionDigits = 2;
    return formatter.format(this);
  }
}
