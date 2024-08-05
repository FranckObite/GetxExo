import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller_main.dart';
import 'home.dart';
import 'home_controller_binding.dart';

class MainBinding extends StatelessWidget {
  const MainBinding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      smartManagement: SmartManagement.full,
      //initialBinding: AllControllerBinding(),
      //if binding applied at route level
      /*  getPages: [
        GetPage(
            name: '/home',
            page: () => const Home(),
            binding: HomeControllerBinding())
      ], */

      //Binding Builder(If we dont want to use separete binding class)

      getPages: [
        GetPage(
            name: '/home',
            page: () => const Home(),
            binding: BindingsBuilder(() {
              Get.lazyPut<HomeControllerBinding>(() => HomeControllerBinding());
            }))
      ],
      title: 'Binding',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Binding'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Text(
                    'The value is ${Get.find<ControllerMain>().count}',
                    style: const TextStyle(fontSize: 25),
                  )),
              ElevatedButton(
                  onPressed: () {
                    Get.find<ControllerMain>().increment();
                  },
                  child: const Text("Increment")),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    // Get.to(const Home());

                    //for named routes

                    //Get.toNamed("/home");

                    //for normal routes

                    Get.to(const Home(), binding: HomeControllerBinding());
                  },
                  child: const Text("Home")),
            ],
          ),
        ),
      ),
    );
  }
}

/*

...Smart Management

  GetX fournit une gestion intelligente qui nous permet de configurer le comportement des dépendances en termes de gestion de la mémoire.

  GetMaterialApp{
    smartManagement: smartManagement.full // or keepFactory or .onlyBuilder
  }

  //Full Mode

  =================

  Tout est supprimé dès que l'itinéraire est supprimé de la pile de navigation, à moins qu'il ne soit déclaré permanent.


  //SmartManagement.keepFactory

  ==================================================

  Tout comme SmartManagement.full, il supprimera ses dépendances lorsqu'il n'est plus utilisé. Il conservera cependant son usine,
  ce qui signifie qu'il recréera la dépendance si vous avez à nouveau besoin de cette instance.

  //SmartManagement.onBuilders

  ======================================================

  With this option, only controllers started in init: or loaded into à Binding
  with Get.lazyPut() will be disposed.

  if you use Get.put() or Get.putAsync() or any other approach, 

  //SmartManagement will not have permissions to exclude thus dependenc
   
 */
