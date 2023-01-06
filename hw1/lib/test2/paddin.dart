import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hw1/test2/class.dart';

class padd extends StatelessWidget {
  const padd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(
            call1.length,
            (index) => Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: NetworkImage(call1[index]['img1']),
                            fit: BoxFit.cover)),
                  ),
                )),
      ),
    );
  }
}
