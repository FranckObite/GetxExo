import 'package:get/get.dart';
import 'package:getxexo/reactiveStateManagerGetX/student_model.dart';

class MyController extends GetxController {
  var student2 = Student2();
  var student = Student(name: "Tom", age: 45).obs;

  var count = 0.obs;

  void increment() {
    count++;
    update(); // mettra à jour la variable count sur l'interface utilisateur qui l'utilise
  }

  void decrement() {
    count--;
    update(); // mettra à jour la variable count sur l'interface utilisateur qui l'utilise
  }

  void convertToUperCase2() {
    student2.name.value = student2.name.value.toUpperCase();
  }

  void convertToUperCase() {
    student.update((student) {
      student!.name = student.name.toString().toUpperCase();
    });
  }

  void convertToLowerCase2() {
    student2.name.value = student2.name.value.toLowerCase();
  }

  void convertToLowerCase() {
    student.update((student) {
      student!.name = student.name.toString().toLowerCase();
    });
  }
}
