import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxexo/getPut_getLasyPut.../controller_hier.dart';

class Mainhier extends StatelessWidget {
  const Mainhier({super.key});

  @override
  Widget build(BuildContext context) {
    /* Mon instance de contrôleur sera créée même si elle n'est pas utilisée. 
    La balise sera utilisée pour trouver l'instance avec le nom de balise. 
    Le contrôleur sera supprimé lorsqu'il n'est pas utilisé, 
    mais si permanent est vrai, l'instance sera vivante dans toute l'application. */

    /* ControllerHier myController =
        Get.put(ControllerHier(), permanent: true, tag: 'instance1');
 */
    /* L'instance sera créée lors de son utilisation
    C'est similaire à "Permanent", la différence est que l'instance est supprimée lorsqu'elle n'est pas utilisée. 
    Mais lorsqu'il sera à nouveau utilisé, Get créera l'instance */

    //Get.lazyPut(() => ControllerHier(), tag: 'instance2', fenix: true);

    Get.putAsync<ControllerHier>(() async => await ControllerHier());

    //here permanent will be true by default and isSingleton is false

    //Get.create<ControllerHier>(() => ControllerHier());

    return GetMaterialApp(
      title: "Dependency injection",
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dependency Injection'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    //instance will be created with tag
                    //Get.find<ControllerHier>(tag:'instance');
                    //find instance
                    //Get.find<ControllerHier>();

                    Get.find<ControllerHier>().incrementCount();
                  },
                  child: const Text("Ckick Me"))
            ],
          ),
        ),
      ),
    );
  }
}
