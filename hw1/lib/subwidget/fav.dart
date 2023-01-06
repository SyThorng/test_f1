import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class fav extends StatelessWidget {
  const fav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.red, Colors.yellow],
                transform: GradientRotation(42.5))),
        child: const Center(child: Text('Favarite page')),
      ),
    );
  }
}
