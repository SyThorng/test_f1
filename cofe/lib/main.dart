import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:pro/app1/Navigation_bar.dart';
import 'package:pro/app1/buy.dart';
import 'package:pro/app1/register.dart';
import 'package:pro/t1.dart';

import 'app1/login.dart';
import 'app1/login2.dart';

void main(List<String> args) {
  runApp(const q());
}

class q extends StatelessWidget {
  const q({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: navigation_bar(),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => login1(),
        "register": (context) => const register(),
        "login3": (context) => login3(),
        "login1": (context) => login1(),
        "tt": (context) => tt(),
        "buy": (context) => buy1(),
      },
    );
  }
}
