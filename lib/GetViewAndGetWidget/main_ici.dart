import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxexo/GetViewAndGetWidget/count_controller.dart';

class MainIci extends GetWidget<CountController> {
  const MainIci({super.key});

  @override
  Widget build(BuildContext context) {
    //Get.put(CountController());

    Get.create(() => CountController());
    return GetMaterialApp(
      title: 'GetView',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("GetView"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Text(
                    "The value is ${controller.count}",
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                  )),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    print(controller.hashCode);
                    controller.increment();
                  },
                  child: const Text('Increment'))
            ],
          ),
        ),
      ),
    );
  }
}



/* GetView

  If we have single controller as a dependency then we can use GetView use Getveiw instead of Statelesswidget and avoid writting Get.find

  GetWidget

  It is simillar to GetView with one difference it it gives the same instance of 
  Get.find everytime. It becomes very useful when used in combination with Get.create

 */
