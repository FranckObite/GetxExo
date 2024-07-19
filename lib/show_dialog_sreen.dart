import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShowDialogSreen extends StatelessWidget {
  const ShowDialogSreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dialog",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Dialog"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.defaultDialog(
                        title: "Dialog Tilte",
                        titleStyle:
                            const TextStyle(fontSize: 25, color: Colors.white),
                        middleText: "This is middle text",
                        middleTextStyle: const TextStyle(
                          fontSize: 20,
                        ),
                        backgroundColor: Colors.teal,
                        radius: 30,
                        content: const Row(
                          children: [
                            CircularProgressIndicator(),
                            SizedBox(
                              width: 16,
                            ),
                            Expanded(child: Text("Data Loading "))
                          ],
                        ),
                        textCancel: "Cancel",
                        cancelTextColor: Colors.white,
                        onCancel: () {
                          print("Cancel  clicked");
                        },
                        cancel: const Text("Retour"),
                        textConfirm: 'Confirm',
                        confirmTextColor: Colors.black,
                        onConfirm: () {
                          print("Confirm clicked");
                        },
                        buttonColor: Colors.amber,
                        confirm: const Text("Confirmer"),
                        actions: [
                          ElevatedButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: const Text("Action1")),
                          ElevatedButton(
                              onPressed: () {}, child: const Text("Action2"))
                        ],
                        barrierDismissible: false);
                  },
                  child: const Text("Show Dialog"))
            ],
          ),
        ),
      ),
    );
  }
}
