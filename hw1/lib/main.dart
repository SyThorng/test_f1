import 'package:flutter/material.dart';
import 'package:hw1/botton/menu.dart';
import 'package:hw1/datatable/hw.dart';
import 'package:hw1/datatable/t1.dart';
import 'package:hw1/gid_view.dart';
import 'package:hw1/homework/page1.dart';
import 'package:hw1/homework/page2.dart';
import 'package:hw1/img_stylder.dart';
import 'package:hw1/project/hww1.dart';
import 'package:hw1/subwidget/fav.dart';
import 'package:hw1/t1.dart';
import 'package:hw1/tap_bar/tap1.dart';
import 'package:hw1/test1/gridview.dart';
import 'package:hw1/test1/widget_inclass.dart';
import 'package:hw1/test2/paddin.dart';
import 'package:hw1/test2/slider.dart';

void main(List<String> args) {
  runApp(Q());
}

class Q extends StatelessWidget {
  const Q({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: img_stylder(),
    );
  }
}
