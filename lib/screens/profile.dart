import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Coming from named route'),
            SizedBox(
              height: 30,
            ),
            RaisedButton(
              onPressed: () {
                Get.toNamed('/next/FlutterDev');
              },
              child: Text('Next Screen'),
            ),
            Text(
              'User Name: ${Get.parameters['user']}'
              '\nJob Profile: ${Get.parameters['job']}',
            )
          ],
        ),
      ),
    );
  }
}
