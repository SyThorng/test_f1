import 'package:flutter/material.dart';
import 'package:ux/cofe1.dart';
import 'package:ux/p2.dart';
import 'package:ux/page2.dart';
import 'package:ux/tt.dart';

void main(List<String> args) {
  runApp(const y());
}

class y extends StatelessWidget {
  const y({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: cofe(),
    );
  }
}
