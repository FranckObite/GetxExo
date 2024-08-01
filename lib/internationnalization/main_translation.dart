import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller_translation.dart';
import 'messages.dart';

class MainTranslation extends StatelessWidget {
  MainTranslation({super.key});

  ControllerTranslation myControlller = Get.put(ControllerTranslation());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Messages(), //You translation
      locale:
          //Get.deviceLocale,
          const Locale('en',
              'US'), //default locale // to get device locale Get.deviceLocale
      fallbackLocale:
          const Locale('en', 'US'), //Fallback lacale if wrong locale found
      title: 'Internationalization',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Internationalization"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "hello".tr,
                style: TextStyle(fontSize: 25, color: Colors.blue),
              ),
              ElevatedButton(
                  onPressed: () {
                    myControlller.changeLanguage('hi', 'IN');
                  },
                  child: const Text("Hindi")),
              const SizedBox(
                height: 18,
              ),
              ElevatedButton(
                  onPressed: () {
                    myControlller.changeLanguage('fr', 'FR');
                  },
                  child: const Text("French")),
              const SizedBox(
                height: 18,
              ),
              ElevatedButton(
                  onPressed: () {
                    myControlller.changeLanguage('en', 'EN');
                  },
                  child: const Text("English")),
            ],
          ),
        ),
      ),
    );
  }
}
