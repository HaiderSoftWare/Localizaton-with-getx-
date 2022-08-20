import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/Controller/local_controller.dart';
import 'package:getx_test/Localization/local.dart';
import 'package:getx_test/screen/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? sharedPref;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPref = await SharedPreferences.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final MyLocalController myLocalController = Get.put(MyLocalController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Local(),
      locale: myLocalController.intialLang,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Home(),
      ),
    );
  }
}
