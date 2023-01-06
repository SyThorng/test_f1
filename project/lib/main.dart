import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project/%20search/search1.dart';
import 'package:project/cofe/cofe1.dart';
import 'package:project/datetimepicker.dart';
import 'package:project/hero_widget/hero_1.dart';
import 'package:project/homework/page1.dart';
import 'package:project/hw1/gg.dart';
import 'package:project/navigation_bar/room.dart';

void main(List<String> args) {
  runApp(tt());
}

class tt extends StatelessWidget {
  const tt({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: search(),
    );
  }
}
