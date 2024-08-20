import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class MainClass extends StatelessWidget {
  MainClass({super.key});

  var emailEditingController = TextEditingController();
  var storage = GetStorage();
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Get Storage & Email Validation',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GetStorage & Email Validation'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(
                  16,
                ),
                child: TextField(
                  controller: emailEditingController,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: ElevatedButton(
                    onPressed: () {
                      if (GetUtils.isEmail(emailEditingController.text)) {
                        storage.write("email", emailEditingController.text);
                        emailEditingController.clear();
                      } else {
                        Get.snackbar('Incorrect Email', "Email invalid format",
                            colorText: Colors.white,
                            backgroundColor: Colors.red,
                            snackPosition: SnackPosition.BOTTOM);
                      }
                    },
                    child: const Text('Write')),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: ElevatedButton(
                    onPressed: () {
                      print(
                          "============ The Email is ${storage.read("email")} =============");
                    },
                    child: const Text('Read')),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /* Il est utilisé pour le stockage persistant de clé/valeur et peut stocker String, int, double, Map et lisst. 
     
    * Pour écouter les changements
     var listen=storrage.listen((){print("Email Changed");});

    * Une fois abonné à un événement d'écoute, il doit être supprimé en utilisant

     storage.removeListen(listen) ;

    * To listen for changes in key

     storage.listenKey('email', (value){
     print('new key is $value');});


    * remove a key (Suppirmer une clé valeur dans le cache)
     storage.remove('email);

    * erase the container (Effacer toutes les données enregistrées dans le cache)
     storage.erase();

    * create container whith a name

    GetStorage g = GetStorage('MyStorage');

    await GetStorage.init('MyStorage')

  */
}
