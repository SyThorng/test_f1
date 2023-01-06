import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class qq extends StatelessWidget {
  const qq({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: GridView.count(
          crossAxisCount: 1,
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              color: Colors.black,
              width: 300,
              height: 300,
              child: Row(
                children: [
                  Container(
                    child: Image.network(
                      'https://metro.co.uk/wp-content/uploads/2015/07/god_of_war_iii_remastered_20150409214116_1436781763.jpg?quality=90&strip=all',
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              color: Colors.black,
              width: 300,
              height: 300,
            ),
          ],
        ));
  }
}
