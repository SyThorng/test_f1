import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class cofe extends StatefulWidget {
  cofe({super.key});

  @override
  State<cofe> createState() => _cofeState();
}

class _cofeState extends State<cofe> {
  int select = 0;

  void change(int index) {
    setState(() {
      select = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: select,
        onTap: change,
        items: const [
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.notifications_active), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Shop'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_sharp), label: 'Favarite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_active), label: 'Home'),
          // BottomNavigationBarItem(icon: Icon(Icons.watch), label: 'Watch')
        ],
        selectedItemColor: Colors.orange[400],
        unselectedItemColor: const Color.fromARGB(235, 81, 68, 68),
      ),
      appBar: AppBar(
        actions: [
          CircleAvatar(
              child: Container(
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(
                        'https://cdn.mos.cms.futurecdn.net/Zo3CVx2aTiykwz23FZVk3a.jpg'),
                    fit: BoxFit.cover)),
          ))
        ],
        elevation: 0,
        backgroundColor: const Color.fromARGB(232, 12, 11, 16),
        leading: Container(
          margin: const EdgeInsets.fromLTRB(1, 0, 0, 4),
          height: 5,
          // width: 10,
          decoration: BoxDecoration(
              color: const Color.fromARGB(235, 81, 68, 68),
              borderRadius: BorderRadius.circular(20)),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.dataset,
              color: Color.fromARGB(183, 32, 31, 38),
              size: 35,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 20, 40, 0),
            width: 300,
            height: 100,
            // color: Colors.amber,
            child: const Text(
              'Find the best Coffee for you',
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            // child: ,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  fillColor: const Color.fromARGB(188, 81, 68, 68),
                  filled: true,
                  hintText: 'Find your Coffee...',
                  hintStyle:
                      const TextStyle(color: Color.fromARGB(222, 32, 31, 38)),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Color.fromARGB(236, 32, 31, 38),
                  )),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width: 100,
                    height: 70,
                    // color: Colors.amber,
                    child: Column(
                      children: [
                        Container(
                          child: Text(
                            'Cofee',
                            style: TextStyle(
                                fontSize: 25, color: Colors.orange[400]),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                          height: 30,
                          width: 30,
                          // color: Colors.red,
                          child: Icon(
                            Icons.public,
                            color: Colors.orange[400],
                            size: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width: 100,
                    height: 70,
                    // color: Colors.amber,
                    child: Column(
                      children: [
                        Container(
                          child: const Text(
                            'Cofee',
                            style: TextStyle(
                                fontSize: 25,
                                color: Color.fromARGB(235, 81, 68, 68)),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                          height: 30,
                          width: 30,
                          // color: Colors.red,
                          child: const Icon(
                            Icons.public,
                            color: Color.fromARGB(235, 81, 68, 68),
                            size: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width: 100,
                    height: 70,
                    // color: Colors.amber,
                    child: Column(
                      children: [
                        Container(
                          child: const Text(
                            'Cofee',
                            style: TextStyle(
                                fontSize: 25,
                                color: Color.fromARGB(235, 81, 68, 68)),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                          height: 30,
                          width: 30,
                          // color: Colors.red,
                          child: const Icon(
                            Icons.public,
                            color: Color.fromARGB(235, 81, 68, 68),
                            size: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width: 100,
                    height: 70,
                    // color: Colors.amber,
                    child: Column(
                      children: [
                        Container(
                          child: const Text(
                            'Cofee',
                            style: TextStyle(
                                fontSize: 25,
                                color: Color.fromARGB(235, 81, 68, 68)),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                          height: 30,
                          width: 30,
                          // color: Colors.red,
                          child: const Icon(
                            Icons.public,
                            color: Color.fromARGB(235, 81, 68, 68),
                            size: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Container(
                  // margin: EdgeInsets.fromLTRB(0, 0, 0, 100),
                  width: 200,
                  height: 300,
                  color: Colors.amber,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          width: 170,
                          height: 170,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.red,
                              image: const DecorationImage(
                                  image: NetworkImage(''))),
                        ),
                      ),
                      Container(
                        width: 130,
                        height: 30,
                        color: Colors.black,
                        margin: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                        child: const Text(
                          'Cappuccino',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      Container(
                        width: 130,
                        height: 20,
                        color: Colors.orange,
                        margin: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                        child: const Text(
                          'With Oat Milk',
                          style: TextStyle(color: Colors.white38),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 25, 40, 0),
                        width: 60,
                        height: 30,
                        color: Colors.indigo,
                        child: Row(
                          children: [
                            Container(
                              child: const Text('\$5.5'),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          // width: ,
                          )
                    ],
                  ),
                ),
                Container(),
              ],
            ),
          )
        ],
      ),
      backgroundColor: const Color.fromARGB(232, 12, 11, 16),
    );
  }
}

// currentIndex: 3,
//         items: const [
//           BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.home_filled,
//               ),
//               label: 'Home'),
//           BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Shop'),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.favorite_sharp), label: 'Favarite'),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.notifications_active), label: 'Home'),
//         ],
//         selectedItemColor: Colors.orange[400],
//         // unselectedItemColor: Colors.black,