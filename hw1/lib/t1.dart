import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hw1/detail_person.dart';
import 'package:hw1/widget/data2.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

// List<String> names = ['Mr.tt', 'Mr,2', 'M3'];
List<Map<String, dynamic>> personData = [
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

class _HomeState extends State<Home> {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        backgroundColor: Colors.amber,
      ),
      appBar: AppBar(
        elevation: 5,
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          const CircleAvatar(
            //
            // backgroundColor: Colors.amber,
            backgroundImage: AssetImage('assets/w.jpeg'),
          )
        ],
        title: const Text('sss'),
        backgroundColor: const Color.fromARGB(233, 236, 109, 5),
      ),
      body: SingleChildScrollView(
        child: Column(
            children: List.generate(
          personData.length,
          (index) => GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => data1(
                      name: personData[index]['name'],
                      nik: personData[index]['nickname'],
                    ),
                  ));
            },
            // child: userdata(persondata: personData[index]),
            child: usercard(personData[index]),
          ),
        )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            i++;
          });
          print('$i');
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget usercard(Map<String, dynamic> personData) {
    return Card(
      elevation: 1,
      child: ListTile(
        leading: const CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage('assets/2.jpeg'),
        ),
        title: Center(
          child: Text(
            personData['name'],
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        subtitle: Center(child: Text(personData['nickname'])),
        trailing: Icon(
          personData['sex'],
          color: personData['sex'] == Icons.male
              ? Colors.blue
              : personData['sex'] == Icons.female
                  ? Colors.red
                  : Colors.amber,
        ),
      ),
    );
  }
}

// child: Column(
//             children: List.generate(
//           20,
//           (index) => const Card(
//             elevation: 1,
//             child: ListTile(
//               title: Text('sss'),
//               subtitle: Text('tttt'),
//               trailing: Icon(Icons.male),
//               leading: CircleAvatar(
//                 backgroundImage: AssetImage('assets/2.jpeg'),
//               ),
//             ),
//           ),
//         )),
