import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hw1/homework/list.dart';
import 'package:hw1/subwidget/fav.dart';
import 'package:hw1/subwidget/home1.dart';
import 'package:hw1/subwidget/sitting.dart';

class button extends StatefulWidget {
  button({super.key});

  @override
  State<button> createState() => _buttonState();
}

class _buttonState extends State<button> {
  // List list = [Colors.blue, Colors.red, Colors.yellowAccent];
  List<Widget> list_page = [home1(), fav(), sitting()];
  int selectindex = 0;
  void changes(int index) {
    setState(() {
      selectindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: list_page[selectindex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: changes,
        currentIndex: selectindex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorite'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting')
        ],
      ),
    );
  }
}


// Center(
//         child: Column(
//           children: [
//             IconButton(
//                 onPressed: () {},
//                 icon: Icon(
//                   Icons.person_add,
//                   size: 50,
//                 )),
//             ElevatedButton(onPressed: () {}, child: Text('Elevenbutton')),
//             MaterialButton(
//               onPressed: () {},
//               child: Text("sss"),
//               color: Colors.red,
//             ),
//             CupertinoButton(
//               child: Text(" CupertinoButton"),
//               color: Colors.amber,
//               onPressed: () {},
//             ),
//             FloatingActionButton(
//               onPressed: () {},
//               child: Icon(Icons.done),
//             )
//           ],
//         ),
//       ),