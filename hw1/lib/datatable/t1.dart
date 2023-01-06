import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hw1/homework/list.dart';

List<Map<String, dynamic>> personData1 = [
  {'id': 'A001', 'name': 'Mr.A', 'nickname': 'lihour', 'sex': Icons.person_add},
  {'id': 'A002', 'name': 'Mr.Vin', 'nickname': 'kk', 'sex': Icons.male},
  {'id': 'A003', 'name': 'Mr.Lisa', 'nickname': 'rr', 'sex': Icons.female},
  {'id': 'A004', 'name': 'Mr.Chanoun', 'nickname': 'hea', 'sex': Icons.male},
  {'id': 'A005', 'name': 'Mr.Chanoun', 'nickname': 'hea', 'sex': Icons.male},
  {'id': 'A006', 'name': 'Mr.koko', 'nickname': 'hea', 'sex': Icons.female},
];

class datatable extends StatefulWidget {
  datatable({super.key});

  @override
  State<datatable> createState() => _datatableState();
}

class _datatableState extends State<datatable> {
  TextEditingController tmp = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          color: Colors.white,
          height: 45,
          child: TextField(
            controller: tmp,
            decoration: InputDecoration(
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        personData1.add({
                          'id': 'A007',
                          'name': tmp.text,
                          'sex': Icons.person
                        });
                      });
                    },
                    icon: Icon(Icons.send)),
                border: OutlineInputBorder(),
                hintText: 'Enter Name'),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            heightFactor: 1,
            child: DataTable(
              headingTextStyle: TextStyle(color: Colors.red, fontSize: 19),
              border: TableBorder.all(),
              columns: const [
                DataColumn(label: Text('ID')),
                DataColumn(label: Text('Name')),
                DataColumn(label: Text('Gende')),
              ],
              rows: List.generate(
                personData1.length,
                (index) => DataRow(cells: [
                  DataCell(
                    Text(personData1[index]['id']),
                  ),
                  DataCell(
                    Text(personData1[index]['name']),
                  ),
                  DataCell(
                    Icon(personData1[index]['sex']),
                  )
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}



//  rows: const [
//             DataRow(cells: [
//               DataCell(
//                 Text('1001'),
//               ),
//               DataCell(
//                 Text('koko'),
//               ),
//               DataCell(
//                 Text('Male'),
//               )
//             ]),
//             DataRow(cells: [
//               DataCell(
//                 Text('1002'),
//               ),
//               DataCell(
//                 Text('JAJA'),
//               ),
//               DataCell(
//                 Text('Female'),
//               )
//             ]),
//           ],