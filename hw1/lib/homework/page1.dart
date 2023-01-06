import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hw1/homework/list.dart';

class page1 extends StatelessWidget {
  const page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),

      body: Card(
        color: const Color.fromARGB(168, 11, 10, 7),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: List.generate(
                list1.length,
                (index) => InkWell(
                  // onTap: () => ,
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(30),
                        child: Container(
                          height: 150,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(146, 7, 40, 224),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                      Positioned(
                          top: 60,
                          left: 1,
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(list1[index]['img']),
                                    fit: BoxFit.cover),
                                // color: Colors.red,
                                shape: BoxShape.circle),
                          )),
                      Positioned(
                          top: 50,
                          left: 150,
                          child: Container(
                            height: 40,
                            width: 150,
                            // color: Colors.red,
                            child: Text(
                              list1[index]['cap'],
                              style: const TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          )),
                      Positioned(
                          top: 100,
                          left: 150,
                          child: Container(
                            height: 40,
                            width: 150,
                            // color: Colors.amber,
                            child: Text(
                              list1[index]['sub'],
                              style: const TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(195, 255, 255, 255)),
                            ),
                          )),
                      Positioned(
                          top: 130,
                          left: 150,
                          child: Container(
                            // color: Colors.green,
                            height: 20,
                            width: 20,
                            child: const Icon(
                              Icons.edit_location,
                              color: Color.fromARGB(164, 255, 255, 255),
                            ),
                          )),
                      Positioned(
                          top: 135,
                          left: 180,
                          child: Container(
                            width: 70,
                            height: 20,
                            // color: Colors.blue,
                            child: Text(
                              list1[index]['loc1'],
                              style: const TextStyle(
                                  color: Color.fromARGB(165, 255, 255, 255)),
                            ),
                          )),
                      Positioned(
                          top: 130,
                          left: 260,
                          child: Container(
                            // color: Colors.green,
                            height: 20,
                            width: 20,
                            child: const Icon(
                              Icons.unfold_less,
                              color: Color.fromARGB(164, 255, 255, 255),
                            ),
                          )),
                      Positioned(
                          top: 135,
                          left: 285,
                          child: Container(
                            width: 70,
                            height: 20,
                            // color: Colors.blue,
                            child: Text(
                              list1[index]['loc2'],
                              style: const TextStyle(
                                  color: Color.fromARGB(165, 255, 255, 255)),
                            ),
                          )),
                      Positioned(
                          top: 40,
                          right: 50,
                          child: Container(
                            // color: Colors.green,
                            height: 20,
                            width: 20,
                            child: const Icon(
                              Icons.more_vert,
                              color: Color.fromARGB(164, 255, 255, 255),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(149, 17, 15, 12),
    );
  }
}
