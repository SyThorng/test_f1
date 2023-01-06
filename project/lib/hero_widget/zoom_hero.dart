import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class zoom extends StatefulWidget {
  zoom({super.key, required this.rol});
  String rol;

  @override
  State<zoom> createState() => _zoomState();
}

class _zoomState extends State<zoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Hero(tag: 'pic', child: Image.network(widget.rol)),
      ),
    );
  }
}
