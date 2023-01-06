import 'package:flutter/material.dart';
import 'package:list_1/log.dart';
import 'package:list_1/run.dart';

void main(List<String> args) {
  runApp(const t());
}

class t extends StatelessWidget {
  const t({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: log(),
    );
  }
}
