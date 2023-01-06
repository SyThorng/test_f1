import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class hww extends StatelessWidget {
  hww({super.key});

  TextEditingController obj = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // body: Container(
      //   child: Column(
      //     children: [
      //       Container(
      //         height: 30,
      //         color: Colors.black,
      //         padding: const EdgeInsets.all(10),
      //         child: TextField(
      //           controller: obj,
      //           decoration: const InputDecoration(
      //             hintText: 'Search for restaurants or foods',
      //             border: OutlineInputBorder(),
      //           ),
      //         ),
      //       ),
      //       Container()
      //     ],
      //   ),
      // ),
    );
  }
}
