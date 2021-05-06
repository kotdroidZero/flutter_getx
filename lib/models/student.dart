import 'package:get/get.dart';

class Student {
  // make variable as reactive
  var name = 'Ram'.obs;
  var age = 12.obs;
}

// make whole class reactive
class Teacher {
  var name = 'Pawan Priya Srivastava';
  var age = 45;
}
