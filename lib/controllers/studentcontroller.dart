import 'package:flutter_ap_getx/models/student.dart';
import 'package:get/get.dart';

class StudentController extends GetxController {
  var student = Student();

  void convertToUpperCase() {
    student.name.value = student.name.value.toUpperCase();
  }
}
