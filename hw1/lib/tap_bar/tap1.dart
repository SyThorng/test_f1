import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hw1/subwidget/fav.dart';
import 'package:hw1/subwidget/home1.dart';
import 'package:hw1/subwidget/sitting.dart';

class tap extends StatefulWidget {
  const tap({super.key});

  @override
  State<tap> createState() => _tapState();
}

class _tapState extends State<tap> {
  List<Widget> _tap = [home1(), fav(), sitting()];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        drawer: Drawer(backgroundColor: Colors.orange),
        appBar: AppBar(
          title: const Text('TapBar'),
          bottom: const TabBar(tabs: [
            Tab(
              child: Icon(Icons.home),
            ),
            Tab(
              child: Icon(Icons.favorite),
            ),
            Tab(
              child: Icon(Icons.settings),
            ),
          ]),
        ),
        body: TabBarView(
            children: List.generate(_tap.length, (index) => _tap[index])),
      ),
    );
  }
}
