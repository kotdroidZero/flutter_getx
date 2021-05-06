import 'package:flutter/material.dart';
import 'package:flutter_ap_getx/controllers/countcontroller.dart';
import 'package:get/get.dart';

class WorkersScreen extends StatelessWidget {
  CountController controller = Get.put(CountController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Workers'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              GetBuilder<CountController>(builder: (ctrl) {
                return Text("count is : ${ctrl.count.value}");
              }),
              TextField(
                onChanged: (val) {
                  controller.incrementCount();
                },
              ),
              ElevatedButton(
                onPressed: () {
                  controller.incrementCount();
                },
                child: Text('increment'),
              ),
            ],
          ),
        ));
  }
}
