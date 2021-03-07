import 'package:flutter/material.dart';

class Unknown extends StatefulWidget {
  @override
  _UnknownState createState() => _UnknownState();
}

class _UnknownState extends State<Unknown> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unknown'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is nod defined route'),
          ],
        ),
      ),
    );
  }
}
