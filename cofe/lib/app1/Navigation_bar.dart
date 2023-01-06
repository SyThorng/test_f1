import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pro/app1/login.dart';
import 'package:pro/app1/login2.dart';
import 'package:pro/app1/register.dart';
import 'package:pro/list1%20copy.dart';

class navigation_bar extends StatefulWidget {
  navigation_bar({super.key});

  @override
  State<navigation_bar> createState() => _navigation_barState();
}

class _navigation_barState extends State<navigation_bar> {
  final page = [tt(), login3(), register()];
  // List Color2 = [Colors.white, Colors.amber, Colors.indigo];
  int select = 0;

  void changeIndex(int index) {
    setState(() {
      select = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List item = <dynamic>[
      Icon(
        Icons.home,
        size: 25,
      ),
      Icon(
        Icons.architecture,
        size: 25,
      ),
      Icon(
        Icons.favorite,
        size: 25,
      ),
      Icon(
        Icons.person,
        size: 25,
      ),
    ];
    return Container(
        // color: Color.fromARGB(162, 81, 68, 68),
        child: SafeArea(
      // top: false,
      child: Scaffold(
        // extendBody: true,
        backgroundColor: Colors.black,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black,
        ),
        bottomNavigationBar: CurvedNavigationBar(
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          buttonBackgroundColor: Colors.orange,
          color: Color.fromARGB(162, 81, 68, 68),
          height: 65,
          backgroundColor: Colors.transparent,
          // index: 0,
          onTap: changeIndex,
          index: select,
          items: [
            CurvedNavigationBarItem(
                child: item[0],
                label: 'Home',
                labelStyle: TextStyle(fontWeight: FontWeight.bold)),
            CurvedNavigationBarItem(
                child: Icon(CupertinoIcons.search),
                label: 'archivebox',
                labelStyle: TextStyle(fontWeight: FontWeight.bold)),
            CurvedNavigationBarItem(
                child: item[2],
                label: 'Favorite',
                labelStyle: TextStyle(fontWeight: FontWeight.bold)),
            CurvedNavigationBarItem(
                child: Icon(CupertinoIcons.settings),
                label: 'Setting',
                labelStyle: TextStyle(fontWeight: FontWeight.bold)),
            CurvedNavigationBarItem(
                child: item[3],
                label: 'Profile',
                labelStyle: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
        body: Container(
          child: page[select],
        ),
      ),
    ));
  }
}
