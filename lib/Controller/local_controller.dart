import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart';

class MyLocalController extends GetxController {
  Locale intialLang =
      sharedPref!.getString('local') == 'ar' ? Locale('ar') : Locale('en');
  void changeLang(String codeLang) {
    sharedPref!.setString('local', codeLang);
    Locale locale = Locale(codeLang);
    Get.updateLocale(locale);
  }
}
