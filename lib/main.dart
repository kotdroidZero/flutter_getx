import 'package:flutter/material.dart';
import 'package:flutter_ap_getx/screens/next.dart';
import 'package:flutter_ap_getx/screens/unknown.dart';
import 'package:get/get.dart';

import 'screens/home.dart';
import 'screens/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(name: '/', page: () => MyApp()),
        GetPage(name: '/profile', page: () => Profile()),
        GetPage(
          name: '/next/:someValueYouWantToPass',
          page: () => Next(),
          transition: Transition.leftToRight,
        ),
      ],
      unknownRoute: GetPage(page: () => Unknown(), name: 'notFound'),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Main'),
        ),
        body: Container(
          width: Get.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton(
                onPressed: () {
                  Get.snackbar(
                    'Title',
                    'This is snackBar',
                    snackPosition: SnackPosition.BOTTOM,
                    overlayBlur: 3,
                  );
                },
                child: Text('Show SnackBar'),
              ),
              FlatButton(
                onPressed: () {
                  Get.defaultDialog();
                },
                child: Text('Show Dialog'),
              ),
              FlatButton(
                onPressed: () {
                  bottomSheet();
                },
                child: Text('Show BottomSheet'),
              ),
              RaisedButton(
                onPressed: () async {
                  var data = await Get.to(Home(),
                      arguments:
                          'I\'m coning from main, Pushkar has sent me here',
                      transition: Transition.downToUp,
                      duration: Duration(
                        milliseconds: 500,
                      ),
                      curve: Curves.ease);

                  Get.snackbar(data, "", snackPosition: SnackPosition.BOTTOM);
                },
                child: Text('Go to home '),
              ),
              RaisedButton(
                onPressed: () {
                  // Get.toNamed('/profile');
                  Get.toNamed('/profile?user=Pushkar&job=mobile Developer');
                },
                child: Text('Navigate to profile with Named Route'),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic> bottomSheet() {
    return Get.bottomSheet(
        Container(
          margin: EdgeInsets.all(10),
          height: Get.height * 0.3,
          width: Get.width,
          child: Column(
            children: [
              Text('THis is GetX BS'),
            ],
          ),
        ),
        barrierColor: Colors.transparent,
        backgroundColor: Colors.amberAccent.withOpacity(0.4),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(
              color: Colors.black,
              style: BorderStyle.solid,
              width: 1,
            )));
  }
}
