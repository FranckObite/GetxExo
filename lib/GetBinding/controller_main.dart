import 'package:get/get.dart';

class ControllerMain extends GetxController {
  var count = 0.obs;
  void increment() {
    count++;
  }
}
