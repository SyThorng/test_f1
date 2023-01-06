import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class userdata extends StatelessWidget {
  userdata({super.key, required this.persondata});

  Map<String, dynamic> persondata;
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
            persondata['name'],
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        subtitle: Center(child: Text(persondata['nickname'])),
        trailing: Icon(
          persondata['sex'],
          color: persondata['sex'] == Icons.male
              ? Colors.blue
              : persondata['sex'] == Icons.female
                  ? Colors.red
                  : Colors.amber,
        ),
      ),
    );
  }
}
