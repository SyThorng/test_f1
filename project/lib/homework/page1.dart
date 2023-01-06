import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project/homework/list.dart';

class page extends StatefulWidget {
  page({super.key});

  @override
  State<page> createState() => _pageState();
}

class _pageState extends State<page> {
  List<Map<String, dynamic>> foo = [];

  TextEditingController tmp = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text('Category'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_bag))
        ],
      ),

      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      obj = obj
                          .where((element) => element.containsKey(value))
                          .toList();
                    });
                  },
                  controller: tmp,
                  decoration: InputDecoration(
                      prefixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.search),
                      ),
                      border: const OutlineInputBorder(),
                      hintText: 'Search for restaurants or food'),
                ),
              ),
              Container(
                height: 60,
                width: double.infinity,
                // color: Colors.red,
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                      height: 40,
                      width: 30,
                      // color: Colors.black,
                      child: const Icon(
                        Icons.color_lens,
                        color: Colors.black,
                        size: 35,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                      height: 40,
                      width: 170,
                      // color: Colors.white,
                      child: const Text(
                        'Vegatable',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                      height: 40,
                      width: 33,
                      // color: Colors.white,
                      child: const Icon(
                        Icons.menu,
                        color: Colors.black,
                        size: 35,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                      height: 40,
                      width: 33,
                      // color: Colors.white,
                      child: const Icon(
                        Icons.dialpad,
                        color: Colors.black,
                        size: 35,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                height: 1400,
                width: double.infinity,
                // color: Colors.amber,
                child: GridView.count(
                  crossAxisCount: 2,
                  children: List.generate(
                    obj.length,
                    (index) => Card(
                      elevation: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              // color: Colors.red,
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: NetworkImage(obj[index]['img']),
                                fit: BoxFit.cover,
                              )),
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(90, 10, 1, 1),
                                height: 40,
                                width: 40,
                                decoration: const BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.circle,
                                  // borderRadius: BorderRadius.circular(10)
                                ),
                                child: Icon(
                                  obj[index]['icon'],
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                width: 90,
                                height: 30,
                                margin: const EdgeInsets.fromLTRB(0, 70, 50, 0),
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(166, 0, 0, 0),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Text(
                                    obj[index]['name'],
                                    style: const TextStyle(
                                        fontSize: 25, color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      // backgroundColor: Colors.grey,
    );
  }
}

// void search(String keyword) {
  //   List<Map<String, dynamic>>? result = [];
  //   if (keyword.isEmpty) {
  //     result = obj;
  //   } else {
  //     result = obj.where((user) => user['name'].(element) =>  _pageState());
  //   }
  // }

