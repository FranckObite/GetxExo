import 'package:get/get.dart';

class Student {
  /* 

La classe peut être rendue observable en rendant les variables individuelles Rx ou en rendant la classe entière observable  
   */

// Individuels variable Rx
  //var name = "Tom".obs;
  //var age = 25.obs;

  //To make the entire classe observable

  var name;

  var age;
  Student({this.name, this.age});
}

class Student2 {
  /* 

La classe peut être rendue observable en rendant les variables individuelles Rx ou en rendant la classe entière observable  
   */

// Individuels variable Rx
  var name = "Tom".obs;
  var age = 25.obs;
}
