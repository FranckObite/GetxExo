import 'package:get/get.dart';

class MyWorkerController extends GetxController {
  //Worker déclenche des rappels spécifiques lorsqu'un événement se produit
  var count = 0.obs;

  void increment() {
    count++;
  }

  @override
  // TODO: implement initialized
  void onInit() {
    //called every time when the value of count variable changes
    //ever(count, (_) => print('this is count: $count'));

    //Called every time when the value of any variable from the liste changes

    //everAll([count], (_) => print(count));

    //Called only once  when the variable value changes (Appelé une seule fois lorsque la valeur de la variable change)
    //once(count, (_) => print("this is once value count: $count"));

    //Called every time the user stops typing for 1 second (//Appelé chaque fois que l'utilisateur arrête de taper pendant 1 seconde)

    // si la durrée n'est pas renseignée, le temps par defaut qui est 800 millisecondes est activé*/
    /*   debounce(
        count,
        (_) => print(
            'Lorsque les utilisateurs arrêtent de taper pendant 1 seconde, le nombre sera imprimé.: $count'),
        time: const Duration(
            seconds:
                1)  ); */

    /* 
                Ignorez tous les changements dans les 3 secondes. 
                Imaginez que l'utilisateur puisse obtenir des pièces en cliquant sur quelque chose, s'il a cliqué 300 fois dans la même minute, 
                il aurait 300 pièces, en utilisant l'intervalle,
                vous pouvez définir un délai de 3 secondes,
                et même en cliquant 300 ou mille fois, le maximum qu'il obtiendrait en 1 minute serait de 20 pièces,
                cliquant 300 ou 1 million de fois
                 */

    interval(count, (_) => print("Ignore all changes"),
        time: const Duration(seconds: 3));

    super.onInit();
  }
}
