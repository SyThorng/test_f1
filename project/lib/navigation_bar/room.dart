import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';

class r1 extends StatelessWidget {
  const r1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          buttonBackgroundColor: Colors.red,
          // backgroundColor: HexColor('152B3c'),
          backgroundColor: Colors.white,
          color: Colors.indigo,
          // color: HexColor('082032'),
          animationDuration: Duration(microseconds: 250),
          animationCurve: Curves.linearToEaseOut,
          height: 80,
          items: const [
            CurvedNavigationBarItem(
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                label: 'Home',
                child: Icon(
                  Icons.home,
                  size: 30,
                )),
            CurvedNavigationBarItem(
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                label: 'wallet',
                child: Icon(
                  Icons.wallet,
                  size: 30,
                )),
            CurvedNavigationBarItem(
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                label: 'Track',
                child: Icon(
                  Icons.track_changes,
                  size: 30,
                )),
            CurvedNavigationBarItem(
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                label: 'Card',
                child: Icon(
                  Icons.card_giftcard,
                  size: 30,
                )),
          ]),
    );
  }
}
