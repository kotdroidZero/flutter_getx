import 'package:get/get.dart';

class CountController extends GetxController {
  var count = 0.obs;

  void incrementCount() {
    count.value++;

    /// only Get widget having id txtCount will be updated
    update(['txtCount']);
  }

  void decrementCount() {
    count.value--;
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    /// called whenever count variable gets changed
    ever(count, (_) {
      print("Ever is called $count");
    });

    /// called whenever any variable from list gets changed
    everAll([count], (_) {
      print("Ever All is called $count");
    });

    /// called after 1 second of change in count variable
    debounce(count, (_) {
      print("Debounce is called $count");
    }, time: Duration(seconds: 1));

    /// called only once when count variable gets changed
    once(count, (_) {
      print("Once is called $count");
    });
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
