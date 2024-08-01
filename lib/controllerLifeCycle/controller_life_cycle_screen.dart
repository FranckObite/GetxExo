import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxexo/controllerLifeCycle/myContollerLifeCycle.dart';

class ControllerLifeCycleScreen extends StatelessWidget {
  ControllerLifeCycleScreen({super.key});

  Mycontollerlifecycle mycontollerlifecycle = Get.put(Mycontollerlifecycle());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Controller Life Cycle',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Controller Life Cycle"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GetBuilder<Mycontollerlifecycle>(
                  initState: (data) => mycontollerlifecycle.increment(),
                  dispose: (_) => mycontollerlifecycle.cleanUpTask(),
                  builder: (controller) {
                    return Text("The value is ${controller.count}");
                  })
            ],
          ),
        ),
      ),
    );
  }
}
