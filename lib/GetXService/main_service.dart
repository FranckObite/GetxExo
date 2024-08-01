import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller_service.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Sevirce',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GetX Service'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.find<ControllerService>().incrementCounter();
                  },
                  child: const Text('Increment'))
            ],
          ),
        ),
      ),
    );
  }
}
