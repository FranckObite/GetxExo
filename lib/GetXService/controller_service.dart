//This class is like a GetXController.
//It shares the same lifecycle (onInit(), onReady(), onClose()).
//It just notifies subclass can not be removed from memory.

//Cette classe est comme un GetXController.
//Il partage le même cycle de vie (onInit(), onReady(), onClose()).
//Il informe simplement que la sous-classe ne peut pas être supprimée de la mémoire.

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ControllerService extends GetxService {
  Future<void> incrementCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int counter = (prefs.getInt('counter') ?? 0) + 1;

    print('Pressed $counter times.');

    await prefs.setInt('counter', counter);
  }
}
