import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('This is Home Screen'),
            Text(Get.arguments),
            RaisedButton(
              onPressed: () {},
              child: Text('Next Screen'),
            ),
            RaisedButton(
              onPressed: () {
                Get.back(result: "I'm back from home");
              },
              child: Text('Previous Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
