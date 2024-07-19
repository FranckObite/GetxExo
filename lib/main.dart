import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'navigation_screen.dart';
import 'route_navigation_screen.dart';

void main() {
  runApp(const RouteNavigationScreen());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SnackbAR",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("SnackBar"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    Get.snackbar(
                        "SnackBar Title", "This will be Snackbar message",
                        snackPosition: SnackPosition.BOTTOM,
                        /*  titleText: const Text(
                          "Another Title",
                        ),
                        messageText: const Text(
                          "Another Message",
                          style: TextStyle(color: Colors.white),
                        ) */

                        colorText: Colors.black,
                        backgroundColor: Colors.black,
                        //borderRadius: 30
                        margin: const EdgeInsets.all(10),
                        //maxWidth: 100
                        animationDuration: const Duration(milliseconds: 3000),
                        backgroundGradient: const LinearGradient(
                            colors: [Colors.red, Colors.green]),

                        //While using borderColors ensure you are using borderWidth otherwise error will be generated

                        borderColor: Colors.purple,
                        borderWidth: 2,
                        boxShadows: [
                          const BoxShadow(
                              color: Colors.yellow,
                              offset: Offset(30, 50),
                              spreadRadius: 20,
                              blurRadius: 8),
                        ],
                        isDismissible: true,
                        dismissDirection: DismissDirection.horizontal,
                        forwardAnimationCurve: Curves.bounceInOut,
                        duration: const Duration(milliseconds: 8000),
                        icon: const Icon(
                          Icons.send,
                          color: Colors.white,
                        ),
                        shouldIconPulse: true,
                        leftBarIndicatorColor: Colors.black,
                        mainButton: TextButton(
                          onPressed: () {
                            print("Button Retry clicked ");
                          },
                          child: const Text("Retry"),
                        ),
                        onTap: (val) {
                          print("SnackBar clicked : $val");
                        },
                        overlayBlur: 2,
                        overlayColor: Colors.grey,
                        padding: const EdgeInsets.all(10),
                        showProgressIndicator: true,
                        progressIndicatorBackgroundColor: Colors.teal,
                        progressIndicatorValueColor:
                            const AlwaysStoppedAnimation(Colors.white),
                        reverseAnimationCurve: Curves.bounceInOut,
                        snackbarStatus: (val) {
                          print(" snackbarStatus :$val");
                        },
                        userInputForm: const Form(
                            child: Row(
                          children: [Expanded(child: TextField())],
                        )));
                  },
                  child: const Text("Show SnackBar"))
            ],
          ),
        ),
      ),
    );
  }
}
