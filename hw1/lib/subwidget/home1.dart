import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class home1 extends StatelessWidget {
  const home1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.orange, Color.fromARGB(255, 182, 13, 13)],
              transform: GradientRotation(20))),
      child: const Center(
        child: Text("Home Page"),
      ),
    );
  }
}
