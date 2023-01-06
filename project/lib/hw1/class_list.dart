import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:project/hw1/list_img.dart';

class c4 extends StatelessWidget {
  const c4({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: const EdgeInsets.only(right: 50, top: 5, left: 1),
        width: 120,
        height: 40,
        // color: Colors.red,
        child: const Text(
          'User interface Design',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
      ),
      Container(
        child: Row(
          children: [
            Container(
              child: const Text(
                '24 Lesson',
                style: TextStyle(color: Color.fromARGB(182, 158, 158, 158)),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10),
              child: const Text(
                '4.3',
                style: TextStyle(
                    fontSize: 17, color: Color.fromARGB(243, 23, 5, 5)),
              ),
            ),
            Container(
              child: const Icon(
                Icons.star,
                size: 20,
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
      Container(
        margin: const EdgeInsets.only(right: 0, top: 5),
        width: 150,
        height: 100,
        decoration: const BoxDecoration(
            color: Colors.teal,
            image: DecorationImage(
                image: NetworkImage(
                    'https://img.freepik.com/premium-vector/teamwork-icon_23-2147506661.jpg?w=2000'),
                fit: BoxFit.cover)),
      )
    ]);
  }
}
