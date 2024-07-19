import 'package:flutter/material.dart';

class UnknowrouteScreen extends StatelessWidget {
  const UnknowrouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Next Screen"),
      ),
      body: const Center(
        child: Text("Unknow route Screen"),
      ),
    );
  }
}
