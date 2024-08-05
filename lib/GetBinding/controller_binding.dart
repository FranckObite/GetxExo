import 'package:get/get.dart';

import 'controller_main.dart';

class ControllerBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies

    Get.lazyPut<ControllerMain>(() => ControllerMain());
  }
}
