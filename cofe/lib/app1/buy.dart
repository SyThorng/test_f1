import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pro/list1%20copy.dart';

class buy1 extends StatelessWidget {
  buy1({super.key, this.img2});

  dynamic img2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color.fromARGB(45, 0, 0, 0),
      //   elevation: 0,
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  color: Colors.amber,
                  width: double.infinity,
                  height: 450,
                  child: Column(
                    children: [
                      Container(
                          height: 450,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(img2),
                                  fit: BoxFit.cover)))
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color.fromARGB(200, 0, 0, 0),
                  ),
                  margin: const EdgeInsets.only(top: 320),
                  width: double.infinity,
                  height: 524,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 50, left: 10),
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(172, 0, 0, 0),
                  ),
                  child: Container(
                    margin: const EdgeInsets.only(left: 0),
                    child: Center(
                        child: IconButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'tt');
                            },
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.orange,
                            ))),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 50, left: 330),
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(172, 0, 0, 0),
                  ),
                  child: Container(
                    margin: const EdgeInsets.only(left: 0),
                    child: const Center(
                        child: Icon(
                      Icons.favorite_border_sharp,
                      color: Colors.brown,
                    )),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 350, left: 30),
                  child: const Text(
                    'Cappuccino',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(208, 255, 255, 255)),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 390, left: 35),
                  child: const Text(
                    'with oat Milk',
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(154, 255, 255, 255)),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 350, left: 250),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(211, 6, 1, 1),
                  ),
                  child: Column(children: [
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      child: const Icon(
                        Icons.coffee_sharp,
                        color: Color.fromARGB(193, 255, 153, 0),
                      ),
                    ),
                    Container(
                      child: const Text(
                        'Coffee',
                        style: TextStyle(color: Colors.white38),
                      ),
                    ),
                  ]),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 350, left: 320),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(211, 6, 1, 1),
                  ),
                  child: Column(children: [
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      child: const Icon(
                        Icons.water_drop,
                        color: Color.fromARGB(193, 255, 153, 0),
                      ),
                    ),
                    Container(
                      child: const Text(
                        'Coffee',
                        style: TextStyle(color: Colors.white38),
                      ),
                    ),
                  ]),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 410, left: 30),
                  width: 140,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    // color: Color.fromARGB(211, 6, 1, 1),
                  ),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Row(children: [
                            Container(
                              margin: const EdgeInsets.only(top: 0),
                              child: const Icon(
                                Icons.star,
                                color: Color.fromARGB(193, 255, 153, 0),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 7),
                              child: const Text(
                                '4.5',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 242, 240, 240)),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 10),
                              child: const Text(
                                '(7,869)',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(184, 242, 240, 240)),
                              ),
                            ),
                          ]),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 480, left: 30),
                  child: const Text(
                    'Description',
                    style: TextStyle(fontSize: 20, color: Colors.white60),
                  ),
                ),
                Container(
                  width: 355,
                  height: 70,
                  margin: const EdgeInsets.only(top: 520, left: 30),
                  child: const Text(
                    'A cappuccino is a coffee-based drink madeprimarily from espresso and milk',
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(226, 255, 255, 255)),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 620, left: 30),
                  child: const Text(
                    'Size',
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(152, 255, 255, 255)),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 670, left: 30),
                  width: 100,
                  height: 50,
                  child: const Center(
                    child: Text(
                      'S',
                      style: TextStyle(color: Colors.orange),
                    ),
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.orange),
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(198, 0, 0, 0)),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 670, left: 150),
                  width: 100,
                  height: 50,
                  child: const Center(
                    child: Text(
                      'M',
                      style: TextStyle(color: Colors.orange),
                    ),
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.orange),
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(198, 0, 0, 0)),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 670, left: 270),
                  width: 100,
                  height: 50,
                  child: const Center(
                    child: Text(
                      'L',
                      style: TextStyle(color: Colors.orange),
                    ),
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.orange),
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(198, 0, 0, 0)),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 750, left: 35),
                  child: const Text(
                    'price 5.5\$',
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(152, 255, 255, 255)),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 750, left: 150),
                  width: 200,
                  height: 50,
                  child: Center(
                      child: const Text(
                    'Buy Now!',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(184, 255, 255, 255)),
                  )),
                  decoration: BoxDecoration(
                    boxShadow: [
                      const BoxShadow(
                          color: Color.fromARGB(134, 255, 153, 0),
                          offset: Offset(
                            10,
                            10,
                          ),
                          blurRadius: 10),
                      BoxShadow(
                          color: Color.fromARGB(166, 255, 153, 0),
                          offset: Offset(10, 10),
                          blurRadius: 20)
                    ],
                    border: Border.all(
                        color: const Color.fromARGB(151, 255, 153, 0)),
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: Colors.orange[700],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Color.fromARGB(3, 17, 17, 17),
      //   onPressed: () {
      //     Navigator.pushNamed(context, ("tt"));
      //   },
      //   child: Container(
      //     child: Icon(Icons.arrow_back),
      //   ),
      // ),
      // backgroundColor: Colors.black,
    );
  }
}
