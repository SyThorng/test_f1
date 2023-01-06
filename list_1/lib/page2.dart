import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class page2 extends StatelessWidget {
  page2(
      {super.key,
      required this.id,
      required this.sex,
      this.img1,
      required this.name1,
      required this.age1,
      required this.his1});

  String id, name1, age1, his1;
  dynamic img1;
  IconData sex;
  String? gender1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(216, 212, 219, 11),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(240, 30, 0, 0),
              width: 120,
              height: 50,
              // color: Colors.red,
              child: Text(
                'ID: $id',
                style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            ),
            Container(
              // margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              width: double.infinity,
              height: 400,
              // color: Colors.amber,
              child: Image(image: img1),
            ),
            Container(
              child: Container(
                width: 200,
                height: 300,
                // color: Color.fromARGB(84, 0, 0, 0),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      // color: Colors.amber,
                      child: Text(
                        'Name:  $name1',
                        style: const TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            // color: Colors.amber,
                            margin: const EdgeInsets.fromLTRB(22, 10, 0, 0),
                            child: const Text('Sex : ',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            child: Icon(
                              sex,
                              color:
                                  sex == Icons.male ? Colors.blue : Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 10, 100, 0),
                      child: Text(
                        age1,
                        style: const TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Text(his1),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      color: Colors.indigo,
                      width: 100,
                      height: 50,
                      // child: Icon(sex == Icons.male
                      //     ? gender1 = 'male'
                      //     : gender1 = 'Female'),
                      // child: ,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // drawer: Drawer(
      //     child: Container(
      //   margin: EdgeInsets.fromLTRB(10, 300, 0, 0),
      //   child: Text('sss'),
      // )),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }
}

//  Container(
//             child: Row(
//               children: [
//                 Container(
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   margin: EdgeInsets.fromLTRB(120, 0, 0, 0),
//                   // width: 200,
//                   // height: 25,
//                   // padding: EdgeInsets.all(1),
//                   // color: Colors.white,
//                   child: Text(
//                     'Sex:  ',
//                     style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
//                   ),
//                 ),
//                 Container(
//                   child: Icon(sex),
//                 )
//               ],
//             ),
//           )
