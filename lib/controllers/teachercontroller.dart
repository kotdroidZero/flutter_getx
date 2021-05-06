import 'package:flutter_ap_getx/models/student.dart';
import 'package:get/get.dart';

class TeacherController extends GetxController {
  var teacher = Teacher().obs;

  void covertToUpperCase() {
    teacher.update((val) {
      val.name = val.name.toUpperCase();
    });
  }
}
