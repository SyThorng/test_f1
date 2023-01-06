import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hw1/datatable/t1.dart';
import 'package:hw1/homework/list.dart';
import 'package:hw1/t1.dart';

TextEditingController tmp = TextEditingController();

class hw extends StatefulWidget {
  hw({super.key});

  @override
  State<hw> createState() => _hwState();
}

class _hwState extends State<hw> {
  dynamic t = [Colors.black, Colors.cyanAccent, Colors.amber];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: Container(
          child: TextField(
            controller: tmp,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    personData1.add({
                      'id': '1009',
                      'name': tmp.text,
                      'sex': Icons.female,
                    });
                  });
                },
                icon: Icon(
                  Icons.send,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Center(
        heightFactor: 1.2,
        child: SafeArea(
          child: DataTable(
              border: TableBorder.all(),
              headingTextStyle:
                  const TextStyle(fontSize: 19, color: Colors.red),
              columns: const [
                DataColumn(label: Text('ID')),
                DataColumn(label: Text('Name')),
                DataColumn(label: Text('Gender')),
              ],
              rows: List.generate(
                personData1.length,
                (index) => DataRow(cells: [
                  DataCell(
                    Text(
                      personData1[index]['id'],
                      // style: TextStyle(color:t),
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  DataCell(
                    Text(
                      personData1[index]['name'],
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  DataCell(
                    Icon(
                      personData1[index]['sex'],
                      color: personData1[index]['sex'] == Icons.male
                          ? Colors.blue
                          : personData1[index]['sex'] == Icons.female
                              ? Colors.red
                              : Colors.amber,
                    ),
                  ),
                ]),
              )),
        ),
      ),
    );
  }
}
