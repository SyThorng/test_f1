import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hw1/homework/list.dart';

dynamic img;

class page2 extends StatelessWidget {
  const page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: ,
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
            list1.length,
            (index) => Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: Container(
                    width: double.infinity,
                    decoration:
                        const BoxDecoration(color: Color.fromARGB(43, 0, 0, 0)),
                  ),
                ),
                Positioned(
                    child: Container(
                  width: double.infinity,
                  height: 400,
                  decoration: const BoxDecoration(
                      // color: Colors.red,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://media.istockphoto.com/photos/abstract-background-wallpaper-picture-id952039286?b=1&k=20&m=952039286&s=612x612&w=0&h=ABfZG_2qbK3D5MaUa6QuBCTm1zrhceEkDrZrY1bvrlI='),
                          fit: BoxFit.cover)),
                )),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 400, 0, 0),
                    child: Container(
                      width: double.infinity,
                      height: 410,
                      color: const Color.fromARGB(207, 0, 0, 0),
                      // decoration: BoxDecoration(),
                    )),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 280, 0, 0),
                      child: Container(
                        width: double.infinity,
                        height: 220,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20)),
                      )),
                ),
                Positioned(
                    top: 250,
                    left: 140,
                    child: Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                          color: Colors.red, shape: BoxShape.circle),
                    ))
              ],
            ),
          ),
        ),
      ),
      // backgroundColor: Colors.amber,
    );
  }
}
