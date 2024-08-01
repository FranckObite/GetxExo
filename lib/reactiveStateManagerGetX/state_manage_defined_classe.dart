import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxexo/reactiveStateManagerGetX/student_model.dart';

class StateManageDefinedClasse extends StatelessWidget {
  StateManageDefinedClasse({super.key});

  //var student = Student();

  //For making the entire class   observable
  final student = Student(name: "tom", age: 25).obs;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "State management",
      home: Scaffold(
        appBar: AppBar(
          title: const Text('State management'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Text(
                    /*student.name.value */
                    "Name is ${student.value.name}",
                    style: const TextStyle(fontSize: 15),
                  )),
              const SizedBox(
                height: 18,
              ),
              ElevatedButton(
                  onPressed: () {
                    //if individual variables are observable

                    // student.name.value = student.name.value.toUpperCase();

                    //If entire class is observable

                    student.update((student) {
                      student!.name = student.name.toString().toUpperCase();
                    });
                  },
                  child: const Text('Uper')),
              const SizedBox(
                height: 18,
              ),
              ElevatedButton(
                  onPressed: () {
                    //if individual variables are observable

                    // student.name.value = student.name.value.toUpperCase();

                    //If entire class is observable

                    student.update((student) {
                      student!.name = student.name.toString().toLowerCase();
                    });
                  },
                  child: const Text('Lower'))
            ],
          ),
        ),
      ),
    );
  }
}
