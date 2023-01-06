import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class data1 extends StatelessWidget {
  data1({super.key, required this.name, required this.nik});

  String name;
  dynamic nik;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        children: [
          Text('$name'),
          Container(
            margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
            child: Text('$nik'),
          )
        ],
      ),
    );
  }
}
