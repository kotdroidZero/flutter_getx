import 'package:flutter/material.dart';
import 'package:flutter_ap_getx/controllers/lngcontroller.dart';
import 'package:get/get.dart';

class LocalExample extends StatelessWidget {
  LanguageController _languageController = Get.put(LanguageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Internationalization'),
      ),
      body: Column(
        children: [
          Text(
            'hello'.tr,
          ),
          ElevatedButton(
            onPressed: () {
              _languageController.changeLanguage('en', 'US');
            },
            child: Text("English"),
          ),
          ElevatedButton(
            onPressed: () {
              _languageController.changeLanguage('fr', 'FR');
            },
            child: Text("French"),
          ),
          ElevatedButton(
            onPressed: () {
              _languageController.changeLanguage('hi', 'IN');
            },
            child: Text("Hindi"),
          ),
        ],
      ),
    );
  }
}
