import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxexo/getXUniqueId/my_unique_Id_controller.dart';

class GetxUniqueId extends StatelessWidget {
  GetxUniqueId({super.key});

  MyUniqueIdController myUniqueIdController = Get.put(MyUniqueIdController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'UNIQUE ID',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Unique ID"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GetBuilder<MyUniqueIdController>(
                  id: "TxtCount",
                  builder: (controller) {
                    return Text(
                      "The value is ${controller.count}",
                      style: const TextStyle(fontSize: 20),
                    );
                  }),
              GetBuilder<MyUniqueIdController>(builder: (controller) {
                return Text(
                  "The value is ${controller.count}",
                  style: const TextStyle(fontSize: 20),
                );
              }),
              const SizedBox(
                height: 18,
              ),
              ElevatedButton(
                  onPressed: () => myUniqueIdController.increment(),
                  child: const Text("Increment"))
            ],
          ),
        ),
      ),
    );
  }
}
