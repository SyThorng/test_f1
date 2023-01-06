import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pro/app1/buy.dart';
import 'package:pro/app1/list1.dart';
import 'package:pro/app1/login.dart';
import 'package:pro/app1/login2.dart';
import 'package:pro/app1/register.dart';
import 'package:pro/list1%20copy.dart';
import 'package:pro/list1.dart';
import 'package:pro/t1.dart';

class tt extends StatefulWidget {
  tt({super.key});

  @override
  State<tt> createState() => _ttState();
}

class _ttState extends State<tt> {
  final page = [tt(), login3(), register()];
  // List Color2 = [Colors.white, Colors.amber, Colors.indigo];
  int select = 0;

  void changeIndex(int index) {
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
        onTap: changeIndex,
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

      // bottomNavigationBar: CurvedNavigationBar(
      //   height: 60,
      //   buttonBackgroundColor: Colors.orange,
      //   backgroundColor: Color.fromARGB(56, 0, 0, 0),
      //   color: Color.fromARGB(162, 81, 68, 68),
      //   // animationCurve: Curves.easeInToLinear,
      //   animationDuration: Duration(milliseconds: 600),
      //   items: const [
      //     CurvedNavigationBarItem(
      //       labelStyle: TextStyle(
      //         fontWeight: FontWeight.bold,
      //       ),
      //       child: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     CurvedNavigationBarItem(
      //       labelStyle: TextStyle(fontWeight: FontWeight.bold),
      //       child: Icon(Icons.favorite),
      //       label: 'Favorate',
      //     ),
      //     CurvedNavigationBarItem(
      //       labelStyle: TextStyle(fontWeight: FontWeight.bold),
      //       child: Icon(CupertinoIcons.archivebox),
      //       label: 'Archive box',
      //     ),
      //     CurvedNavigationBarItem(
      //       labelStyle: TextStyle(fontWeight: FontWeight.bold),
      //       child: Icon(Icons.person),
      //       label: 'Profile',
      //     ),
      //   ],
      // ),
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
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 20, 40, 0),
                  width: 300,
                  height: 100,
                  // color: Colors.amber,
                  child: SelectableText(
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
                        hintStyle: const TextStyle(
                            color: Color.fromARGB(222, 32, 31, 38)),
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
                          child: InkWell(
                            onTap: () {},
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
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 0, 10, 0),
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
                  padding: const EdgeInsets.all(0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: InkWell(
                      // onTap: () {
                      //   Navigator.pushNamed(context, 'buy');
                      // },
                      child: InkWell(
                        // onTap: () {
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //         builder: (context) => buy1(
                        //           img2: Obj2[2],
                        //         ),
                        //       ));
                        // },
                        child: Row(
                            children: List.generate(
                          Obj2.length,
                          (index) => InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => buy1(
                                      img2: Obj2[index],
                                    ),
                                  ));
                            },
                            child: Container(
                              margin: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                              width: 200,
                              height: 300,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    Color.fromARGB(89, 255, 255, 255),
                                    Color.fromARGB(147, 81, 68, 68),
                                  ],
                                  // transform: GradientRotation(3),
                                  begin: Alignment.bottomRight,
                                ),
                                color: const Color.fromARGB(147, 81, 68, 68),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Container(
                                      width: 170,
                                      height: 170,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.red,
                                          image: DecorationImage(
                                              image: NetworkImage(Obj2[index]),
                                              fit: BoxFit.cover)),
                                    ),
                                  ),
                                  Container(
                                    width: 130,
                                    height: 30,
                                    // color: Colors.black,
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 30, 0),
                                    child: const Text(
                                      'Cappuccino',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    ),
                                  ),
                                  Container(
                                    width: 130,
                                    height: 20,
                                    // color: Colors.orange,
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 30, 0),
                                    child: const Text(
                                      'With Oat Milk',
                                      style: TextStyle(color: Colors.white38),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            20, 20, 0, 0),
                                        width: 80,
                                        height: 30,
                                        // color: Colors.red,
                                        child: const Text(
                                          '\$5.5',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            50, 10, 0, 0),
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            color: Colors.orange[400],
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.add,
                                              color: Colors.white,
                                            )),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 20, 120, 0),
                  width: 200,
                  height: 40,
                  // color: Colors.amber,
                  child: Text(
                    'Special for you',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: List.generate(
                      Obj2.length,
                      (index) => InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => buy1(
                                  img2: Obj1[index],
                                ),
                              ));
                        },
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                          width: 200,
                          height: 300,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromARGB(89, 255, 255, 255),
                                Color.fromARGB(147, 81, 68, 68),
                              ],
                              // transform: GradientRotation(3),
                              begin: Alignment.bottomRight,
                            ),
                            color: const Color.fromARGB(147, 81, 68, 68),
                            borderRadius: BorderRadius.circular(10),
                          ),
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
                                      image: DecorationImage(
                                          image: NetworkImage(Obj1[index]),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                              Container(
                                width: 130,
                                height: 30,
                                // color: Colors.black,
                                margin: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                                child: const Text(
                                  'Cappuccino',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                              ),
                              Container(
                                width: 130,
                                height: 20,
                                // color: Colors.orange,
                                margin: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                                child: const Text(
                                  'With Oat Milk',
                                  style: TextStyle(color: Colors.white38),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(20, 20, 0, 0),
                                    width: 80,
                                    height: 30,
                                    // color: Colors.red,
                                    child: const Text(
                                      '\$5.5',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(50, 10, 0, 0),
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        color: Colors.orange[400],
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        )),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}

// children: [
//                           Container(
//                             margin: const EdgeInsets.fromLTRB(0, 10, 10, 0),
//                             width: 100,
//                             height: 40,
//                             color: Colors.indigo,
//                             child: Container(
//                               margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
//                               child: const Text(
//                                 '\$5.5',
//                                 style: TextStyle(
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.white),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             // margin: EdgeInsets.fromLTRB(30, 0, , 0),
//                             width: 40,
//                             height: 40,
//                             color: Colors.indigo,
//                           )
//                         ],
