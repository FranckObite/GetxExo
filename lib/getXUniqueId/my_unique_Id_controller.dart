import 'package:get/get.dart';

class MyUniqueIdController extends GetxController {
  var count = 0;

  void increment() async {
    count++;

    update(['TxtCount']);
  }
}
