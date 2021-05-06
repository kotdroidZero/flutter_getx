import 'package:flutter/material.dart';
import 'package:flutter_ap_getx/controllers/countcontroller.dart';
import 'package:flutter_ap_getx/controllers/studentcontroller.dart';
import 'package:flutter_ap_getx/controllers/teachercontroller.dart';
import 'package:flutter_ap_getx/models/student.dart';
import 'package:get/get.dart';

class StateManagementScreen extends StatelessWidget {
  var count = 0.obs;

  var student = Student();

  // make whole class reactive or observable
  var teacher = Teacher().obs;

  // create instance of student controller class
  var studentController = Get.put(StudentController());
  var teacherController = Get.put(TeacherController());
  var countController = Get.put(CountController());

  void increment() {
    count.value++;
  }

  void decrement() {
    count.value--;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('State Management'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GetBuilder<CountController>(
                  init: CountController(),
                  id: 'txtCount',
                  builder: (ctrl) {
                    return Text("Count value via ctrl is ${ctrl.count.value}");
                  },
                ),
                TextButton(
                  onPressed: Get.find<CountController>().decrementCount,
                  child: Text('Decrement'),
                ),
                TextButton(
                  onPressed: Get.find<CountController>().incrementCount,
                  child: Text('Increment'),
                ),
                Text(
                    'Simple Observable using Obx widget and obs in value to be observed'),
                Obx(
                  () {
                    return Text('Count value is ${count.value}');
                  },
                ),
                TextButton(
                  onPressed: decrement,
                  child: Text('Decrement'),
                ),
                TextButton(
                  onPressed: increment,
                  child: Text('Increment'),
                ),
                Text(
                    'Simple Observable using Obx widget and obs in value to be observed in model class'),
                Obx(
                  () {
                    return Text('The Student name is : ${student.name.value}');
                  },
                ),
                TextButton(
                  onPressed: () {
                    student.name.value = student.name.value.toUpperCase();
                  },
                  child: Text('Change Case of Student Name'),
                ),
                Text(
                    'Simple Observable using Obx widget and obs the model class to be observed'),
                Obx(
                  () {
                    return Text('The Teacher name is : ${teacher.value.name}');
                  },
                ),
                TextButton(
                  onPressed: () {
                    teacher.update((teacherVal) {
                      teacherVal.name = teacherVal.name.toUpperCase();
                    });
                  },
                  child: Text('Change Case of Teacher Name'),
                ),
                Text(
                    'Simple Observable using Obx widget and obs in value to be observed in model class via controller'),
                Obx(
                  () {
                    return Text(
                        'The Student name is : ${studentController.student.name}');
                  },
                ),
                TextButton(
                  onPressed: () {
                    studentController.convertToUpperCase();
                  },
                  child: Text('Change Case of Student Name'),
                ),
                Text(
                    'Simple Observable using Obx widget and obs the model class to be observed via controller'),
                Obx(
                  () {
                    return Text(
                        'The Teacher name is : ${teacherController.teacher.value.name}');
                  },
                ),
                TextButton(
                  onPressed: () {
                    teacherController.covertToUpperCase();
                  },
                  child: Text('Change Case of Student Name'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
