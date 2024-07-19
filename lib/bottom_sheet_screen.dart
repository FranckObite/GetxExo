import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetScreen extends StatelessWidget {
  const BottomSheetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bottom Sheet',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Bottom Sheet"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.bottomSheet(
                        SizedBox(
                          child: Wrap(
                            children: [
                              ListTile(
                                onTap: () {
                                  Get.changeTheme(ThemeData.light());
                                },
                                title: const Text("Light Theme"),
                                leading: const Icon(Icons.wb_sunny_outlined),
                              ),
                              ListTile(
                                onTap: () {
                                  Get.changeTheme(ThemeData.dark());
                                },
                                title: const Text("Dark Theme"),
                                leading: const Icon(Icons.wb_sunny),
                              )
                            ],
                          ),
                        ),
                        //barrierColor: Colors.greenAccent.shade100,

                        backgroundColor: Colors.teal,
                        isDismissible: true,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: const BorderSide(
                                color: Colors.white,
                                style: BorderStyle.solid,
                                width: 2.0)),
                        enableDrag: true);
                  },
                  child: const Text("Show Bottom Sheet"))
            ],
          ),
        ),
      ),
    );
  }
}
