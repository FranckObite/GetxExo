import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("This is Home Screen"),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed("/NextScreen/1234");
                },
                child: const Text(
                  "Next Screen",
                  style: TextStyle(fontSize: 18),
                )),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
                onPressed: () {
                  //Get.back();
                  Get.back(result: 'This is from Home Screen');
                },
                child: const Text(
                  "Back to Main",
                  style: TextStyle(fontSize: 18),
                )),
            const SizedBox(
              height: 8,
            ),
            /* Text(
              "${Get.arguments}",
              style: const TextStyle(color: Colors.green, fontSize: 20),
            ) */

            Text(
              "Chanel name is : ${Get.parameters['channel']} and content is ${Get.parameters['Codes&content']}",
              style: const TextStyle(color: Colors.red, fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
