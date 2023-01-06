import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project/hw1/list_img.dart';

class c3 extends StatelessWidget {
  const c3({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(
              ls.length,
              (index) => Container(
                    margin: EdgeInsets.only(left: 15, top: 20),
                    width: 250,
                    height: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(101, 218, 216, 216),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: NetworkImage(ls[index]['img'])),
                              // color: Colors.red
                            ),
                          ),
                        ),
                        Container(
                          width: 130,
                          height: 100,
                          // color: Colors.indigo,
                          child: Column(children: [
                            Container(
                              margin:
                                  EdgeInsets.only(right: 20, top: 5, left: 1),
                              width: 350,
                              height: 33,
                              // color: Colors.red,
                              child: Text(
                                'User interface Design',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    child: Text(
                                      '24 Lesson',
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              239, 158, 158, 158)),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text(
                                      '4.3',
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Color.fromARGB(243, 23, 5, 5)),
                                    ),
                                  ),
                                  Container(
                                    child: Icon(
                                      Icons.star,
                                      size: 20,
                                      color: Colors.blue,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 0, top: 2),
                              width: 130,
                              height: 40,
                              // color: Colors.amber,
                              child: Row(
                                children: [
                                  Container(
                                    child: Text(
                                      '\$25',
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                        // color: Colors.blue
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 50),
                                    width: 40,
                                    height: 40,
                                    // color: Colors.blue,
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.add_circle,
                                          color: Colors.blue,
                                        )),
                                  ),
                                ],
                              ),
                            )
                          ]),
                        )
                      ],
                    ),
                  ))),
    );
  }
}
