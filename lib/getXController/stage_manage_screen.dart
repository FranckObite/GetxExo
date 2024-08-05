
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxexo/getXController/my_controller.dart';

class StageManageScreen extends StatelessWidget {
  StageManageScreen({super.key});

  //Create the instance of controller

  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "State management",
      home: Scaffold(
        appBar: AppBar(
          title: const Text('State management'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Text(
                    /*student.name.value */
                    "Name is ${myController.student.value.name}",
                    style: const TextStyle(fontSize: 15),
                  )),
              const SizedBox(
                height: 18,
              ),
              ElevatedButton(
                  onPressed: () {
                    myController.convertToUperCase();
                  },
                  child: const Text('Uper')),
              const SizedBox(
                height: 18,
              ),
              ElevatedButton(
                  onPressed: () {
                    myController.convertToLowerCase();
                  },
                  child: const Text('Lower'))
            ],
          ),
        ),
      ),
    );
  }
}
