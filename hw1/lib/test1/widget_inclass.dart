import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hw1/t1.dart';
import 'package:hw1/widget/data2.dart';

List<Map<String, dynamic>> out1 = [
  {
    'name': 'Mr.Ko',
    'nickname': 'lihour',
    'sex': Icons.person_off,
    'img': const AssetImage('assets/car.jpeg')
  },
  {
    'name': 'Mr.Vin',
    'nickname': 'kk',
    'sex': Icons.male,
    'img': const AssetImage('assets/abc.jpeg')
  },
  {
    'name': 'Mr.Lisa',
    'nickname': 'rr',
    'sex': Icons.female,
    'img': const AssetImage('assets/soda.jpeg')
  },
  {
    'name': 'Mr.Chanoun',
    'nickname': 'hea',
    'sex': Icons.male,
    'img': const AssetImage('assets/boo.jpeg')
  },
];

class obj extends StatelessWidget {
  obj({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
      ),
      body: Column(
        children: List.generate(
          out1.length,
          (index) => GestureDetector(
              // child: object(out1[index]),
              // child: userdata(persondata: personData[index]),

              ),
        ),
      ),
    );
    // ignore: dead_code

    // }
    //  Widget object(List<Map<String, dynamic>> out1) {
    //   return Card(
    //     elevation: 1,
    //     child: ListTile(
    //       leading: const CircleAvatar(
    //         radius: 30,
    //         backgroundImage: AssetImage('assets/2.jpeg'),
    //       ),
    //       title: Center(
    //         child: Text(
    //           out1['name'],
    //           style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    //         ),
    //       ),
    //       subtitle: Center(child: Text(personData['nickname'])),
    //       trailing: Icon(
    //         out1['sex'],
    //         color: personData['sex'] == Icons.male
    //             ? Colors.blue
    //             : out1['sex'] == Icons.female
    //                 ? Colors.red
    //                 : Colors.amber,
    //       ),
    //     ),
    //   );
  }
}
