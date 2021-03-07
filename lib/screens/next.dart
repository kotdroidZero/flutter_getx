import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Next extends StatefulWidget {
  @override
  _NextState createState() => _NextState();
}

class _NextState extends State<Next> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('this is next Screen'),
            Text(Get.parameters['someValueYouWantToPass']),
            RaisedButton(
              onPressed: () {
                Get.toNamed('/media');
              },
              child: Text('Go to Media Screen'),
            )
          ],
        ),
      ),
    );
  }
}
