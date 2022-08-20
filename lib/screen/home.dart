import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/Controller/local_controller.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final MyLocalController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('1'.tr),
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              controller.changeLang('ar');
            },
            child: const Text('العربية'),
          ),
          TextButton(
            onPressed: () {
              controller.changeLang('en');
            },
            child: const Text('English'),
          ),
        ],
      ),
    );
  }
}
