import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StateManagementScreen extends StatelessWidget {
  StateManagementScreen({super.key});

  @override

  /* si nous voulons à chaque fois que la valeur de la variable change alors tous les widgets qui utilisent la variable doivent se mettre à jour,
  alors la variable doit être réactive ou observable et pour la rendre réactive (Rx) .obs est utilisé avec une valeur variable.
  Pour mettre à jour le widget qui utilise Rx, la variable doit être placée dans Obx(()=> Votre widget qui utilise Rx) 
  Le widget ne sera mis à jour que si et seulement si la valeur variable Rx change*/

  /* .............................
    Other ways of  making the variable Rx:
    
      1- The first is using Rx{Type} 
    ======================================
     initial value is recommended, but not mandatory

     final name =RxString("");
     final isLogged=RxBool(false);
     final count=RxInt(0);
     final bamance=RxDouble(0.0);
     final items=RxList<String>([]);
     final myMap=RxMap<String, int>({});

     2- Use Dart Generics, Rx<Type>
    ====================================

    final name =Rx<String>("");
     final isLogged=Rx<Bool>(false);
     final count=Rx<Int>(0);
     final bamance=Rx<Double>(0.0);
     final items=Rx<List<String>>([]);
     final myMap=RxMap<<String, int>>({});
      */

  /* 

      Custom classes - it can be any class, literally 
    ====================================================  
      final user = Rx<User>();
      
       */

  var count = 0.obs;

  void increment() {
    count++;
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "State Management",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("State management"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Text(
                    "Count value is: $count",
                    style: const TextStyle(fontSize: 15),
                  )),
              const SizedBox(
                height: 18,
              ),
              ElevatedButton(
                  onPressed: () {
                    increment();
                  },
                  child: const Text("Increment"))
            ],
          ),
        ),
      ),
    );
  }
}
