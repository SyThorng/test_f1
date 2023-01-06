import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project/hero_widget/zoom_hero.dart';

class hero1 extends StatelessWidget {
  hero1({super.key});

  String url =
      'https://img.freepik.com/free-vector/cute-swag-polar-bear-with-hat-gold-chain-necklace-cartoon-illustration-flat-cartoon-style_138676-2719.jpg?w=2000';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Hero ')),
        body: Card(
          child: ListTile(
            onTap: () {
              // MaterialPageRoute(
              //   builder: (context) => zoom(rol: url),
              // );
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => zoom(rol: url),
                  ));
            },
            leading: Hero(
              tag: 2,
              child: Image(
                image: NetworkImage(
                    'https://img.freepik.com/free-vector/cute-swag-polar-bear-with-hat-gold-chain-necklace-cartoon-illustration-flat-cartoon-style_138676-2719.jpg?w=2000'),
              ),
            ),
          ),
        ));
  }
}
