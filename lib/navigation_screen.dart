import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_screen.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Navigation",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Navigation"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () async {
                    var data = await Get.to(const HomeScreen(),
                        //arguments: "Data from Navigation",
                        fullscreenDialog: true,
                        transition: Transition.zoom,
                        //duration: const Duration(milliseconds: 2000),
                        //curve: Curves.bounceInOut
                        );
                    print("The received data is $data");

                    /* ..Go to home screen but no option to return to previous screen => Get.off(HommScreen()) 
                      ..Go to home and cancel all previous screens/routes => Get.offAll(HomeScreen)
                      ...Go to next screen with some data => Get.to(HomeScreen(), arguments: 'Data from main')
                      ..Go to next screen and receive data sent from home screen => var data=await Get.to(HomeScreen)
                       print("The received data is $data")
                        */
                  },
                  child: const Text("Go to Home"))
            ],
          ),
        ),
      ),
    );
  }
}
