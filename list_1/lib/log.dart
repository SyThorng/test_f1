import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class log extends StatelessWidget {
  const log({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 700,
          child: Image(image: AssetImage('assets/qw.png')),
        ),
      ),
    );
  }
}
