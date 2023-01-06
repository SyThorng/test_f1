import 'dart:io';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pro/app1/register.dart';

class login1 extends StatefulWidget {
  login1({super.key});

  @override
  State<login1> createState() => _login1State();
}

class _login1State extends State<login1> {
  final Uri _url = Uri.parse('https://github.com/SyThorng');

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(40),
              child: Container(
                width: 500,
                height: 350,
                // color: Color.fromARGB(91, 255, 193, 7),
                child: Lottie.network(
                  'https://assets8.lottiefiles.com/packages/lf20_4mu3hoco.json',
                ),
              ),
            ),
            Container(
              width: 300,
              height: 70,
              // color: Colors.amber,
              child: const Center(
                child: Text(
                  textAlign: TextAlign.center,
                  'Get the best coffee in town!',
                  style: TextStyle(
                      fontFamily: "font/KdamThmorPro-Regular.ttf",
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(235, 81, 68, 68)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: 350,
                height: 80,
                // color: Colors.amber,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "register");
                      },
                      child: Container(
                        width: 140,
                        height: 50,
                        decoration: BoxDecoration(
                            border: const Border(),
                            color: const Color.fromARGB(235, 81, 68, 68),
                            borderRadius: BorderRadius.circular(20)),
                        child: const Center(
                            child: Text(
                          'Register',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(183, 32, 31, 38)),
                        )),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "login3");
                      },
                      child: Container(
                        width: 140,
                        height: 50,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.orange),
                            color: const Color.fromARGB(144, 207, 131, 44),
                            borderRadius: BorderRadius.circular(20)),
                        child: const Center(
                            child: Text(
                          'Login',
                          style: TextStyle(fontSize: 20, color: Colors.white54),
                        )),
                      ),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              borderRadius: BorderRadius.circular(20),
              onTap: _launchUrl,
              child: Container(
                width: 300,
                height: 50,
                child: Row(children: [
                  Container(
                    margin: const EdgeInsets.only(left: 50),
                    child: const Icon(Icons.facebook),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: const Center(
                      child: Text('Connect with Facebook'),
                    ),
                  )
                ]),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.orange),
                  color: const Color.fromARGB(235, 81, 68, 68),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            // MaterialButton(
            //   onPressed: _launchUrl,
            //   color: Colors.white,
            // ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
