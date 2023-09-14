import 'package:get/get.dart';
import 'package:noor/core/values/languages/ar.dart';
import 'package:noor/core/values/languages/en.dart';

class Translation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': en,
        'ar': ar,
      };
}
