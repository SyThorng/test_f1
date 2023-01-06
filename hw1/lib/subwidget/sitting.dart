import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class sitting extends StatelessWidget {
  const sitting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [Colors.yellowAccent, Colors.indigo],
          )),
          child: const Center(child: Text('Setting Page'))),
    );
  }
}
