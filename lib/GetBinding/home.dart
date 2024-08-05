import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Text(
                  'The value is ${Get.find<HomeController>().count}',
                  style: const TextStyle(fontSize: 25),
                )),
            ElevatedButton(
                onPressed: () {
                  Get.find<HomeController>().increment();
                },
                child: const Text("Increment")),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text("Back")),
          ],
        ),
      ),
    );
  }
}
