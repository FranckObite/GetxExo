import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_screen.dart';
import 'next_screen.dart';
import 'unknowRoute_screen.dart';

class RouteNavigationScreen extends StatelessWidget {
  const RouteNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Route Navigation Screen",
      initialRoute: "/",
      defaultTransition: Transition.cupertino,
      getPages: [
        GetPage(
          name: '/',
          page: () => const RouteNavigationScreen(),
        ),
        GetPage(name: '/HomeScreen', page: () => const HomeScreen()),
        GetPage(
            name: '/NextScreen/:someValue',
            page: () => const NextScreen(),
            transition: Transition.leftToRight),
      ],
      unknownRoute:
          GetPage(name: '/notfound', page: () => const UnknowrouteScreen()),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Route Navigation"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.toNamed("/HomeScreen", parameters: {
                      "channel": "Ripples",
                      "Codes&content": 'Flutter GetX'
                    });

                    /* .....Go to home screen but no option ti return to previous screen => Get.offNamed("/HomeScreen")
                        ...Go to home screen and cancel all previous screens/routes => Get.offAllNamed("/HomeScreen")
                        ....Dynamic URL link => Get.toNamed("/HomeScreen", parameters: {
                      "channel": "Ripples",
                      "Codes&content": 'Flutter GetX'
                    }); */
                  },
                  child: const Text("Go to home by route"))
            ],
          ),
        ),
      ),
    );
  }
}
