import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class t extends StatelessWidget {
  const t({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        leading: const Icon(
          Icons.menu_open,
          color: Colors.black,
        ),
        actions: [
          Container(
            margin: EdgeInsets.fromLTRB(
              0,
              0,
              20,
              0,
            ),
            child: const CircleAvatar(
              backgroundColor: Color.fromARGB(255, 103, 63, 190),
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Container(
          // color: Colors.grey,
          width: double.infinity,
          height: 100,
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 0, 10),
                // color: Colors.amber,
                height: 30,
                width: 150,
                child: Text(
                  'Hello, Daisy !',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                height: 30,
                width: 200,

                // color: Colors.amber,
                child: Text(
                  'Have a nice day!',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
