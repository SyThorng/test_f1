import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class pp extends StatelessWidget {
  pp({super.key, required this.Data});

  Map<String, dynamic> Data;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: ListTile(
        leading: const CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage('assets/2.jpeg'),
        ),
        title: Center(
          child: Text(
            Data['name'],
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        subtitle: Center(child: Text(Data['nickname'])),
        trailing: Icon(
          Data['sex'],
          color: Data['sex'] == Icons.male
              ? Colors.blue
              : Data['sex'] == Icons.female
                  ? Colors.red
                  : Colors.amber,
        ),
      ),
    );
  }
}
