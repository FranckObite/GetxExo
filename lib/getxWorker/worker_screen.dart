import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxexo/getxWorker/my_worker_controller.dart';

class WorkerScreen extends StatelessWidget {
  WorkerScreen({super.key});

  MyWorkerController myWorkerController = Get.put(MyWorkerController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Workers",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Workers"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () => myWorkerController.increment(),
                  child: const Text('Increment')),
              Padding(
                padding: const EdgeInsets.all(16),
                child: TextField(
                  onChanged: (value) {
                    myWorkerController.increment();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
