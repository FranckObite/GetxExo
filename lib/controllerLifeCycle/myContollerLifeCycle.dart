import 'package:get/get.dart';

class Mycontollerlifecycle extends GetxController {
  var count = 0;

  void increment() async {
    await Future.delayed(const Duration(seconds: 5));

    count++;

    update();
  }

  void cleanUpTask() {
    print("Clean up Tasm");
  }

  //Better Approche

  @override
  void onInit() {
    super.onInit();
    print("Init called");
  }

}
