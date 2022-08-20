import 'package:get/get.dart';

class Local implements Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'ar': {
          '1': "العربية",
        },
        'en': {
          '1': "English",
        },
      };
}
