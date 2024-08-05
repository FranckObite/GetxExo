import 'package:get/get.dart';

import 'controller_main.dart';
import 'home_controller.dart';

class AllControllerBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies

    Get.lazyPut<ControllerMain>(() => ControllerMain());
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
