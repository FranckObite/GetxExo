import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxexo/getXController/my_controller.dart';

class GetxWithControllerType extends StatelessWidget {
  const GetxWithControllerType({super.key});

/* Si la propriété init n'est pas utilisée GetX<Type de contrôleur > alors créez l'instance du contrôleur comme suit.: 
  MyController myController =Get.put(MyController()) */
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Controller Type State Management",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Controller Type State Management"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GetX<MyController>(
                  init: MyController(),
                  builder: (controller) {
                    return Text(
                      "The value is ${controller.count}",
                      style: const TextStyle(color: Colors.teal, fontSize: 15),
                    );
                  }),
              const SizedBox(
                height: 18,
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.find<MyController>().increment();
                  },
                  child: const Text("Increment")),
              const SizedBox(
                height: 18,
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.find<MyController>().decrement();
                  },
                  child: const Text("Decrement"))
            ],
          ),
        ),
      ),
    );
  }
}
