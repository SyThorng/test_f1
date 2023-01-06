import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class c1 extends StatelessWidget {
  const c1({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(right: 90),
              width: 100,
              height: 20,
              // color: Colors.amber,
              child: Text(
                'Choose Your',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12),
              child: Container(
                width: 200,
                height: 30,
                // color: Colors.red,
                child: Text(
                  'Design Course',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
        Container(
          margin: EdgeInsets.only(left: 100),
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://cdn-icons-png.flaticon.com/512/146/146031.png'),
                fit: BoxFit.cover),
            color: Colors.indigo,
            borderRadius: BorderRadius.circular(35),
          ),
        )
      ],
    );
  }
}
