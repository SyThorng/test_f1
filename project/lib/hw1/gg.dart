import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project/hw1/class1.dart';
import 'package:project/hw1/class2.dart';
import 'package:project/hw1/class3.dart';
import 'package:project/hw1/class_list.dart';
import 'package:project/hw1/list_img.dart';

class gg extends StatelessWidget {
  const gg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(100, 158, 158, 158),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              c1(),
              Container(
                width: 300,
                margin: EdgeInsets.only(top: 15, right: 60),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search of course',
                    suffixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40)),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 250, top: 10),
                width: 100,
                height: 30,
                // color: Color.fromARGB(49, 0, 0, 0),
                child: Text(
                  'Category',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              c2(),
              c3(),
              Container(
                margin: EdgeInsets.only(right: 180, top: 10),
                width: 160,
                height: 30,
                // color: Color.fromARGB(49, 0, 0, 0),
                child: Text(
                  'Populor Course',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: double.infinity,
                height: 1000,
                child: GridView.count(
                    crossAxisCount: 2,
                    children: List.generate(
                      ls.length,
                      (index) => Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          height: 400,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(44, 158, 158, 158),
                              borderRadius: BorderRadius.circular(12)),
                          width: 500,
                          child: c4(),
                        ),
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
