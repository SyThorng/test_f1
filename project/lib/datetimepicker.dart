import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class date extends StatefulWidget {
  const date({super.key});

  @override
  State<date> createState() => _dateState();
}

class _dateState extends State<date> {
  TextEditingController date_control = TextEditingController();

  void initState() {
    super.initState();
    date_control.text = DateTime.now().toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: DateTimePicker(
        // initialValue: '',
        controller: date_control,
        dateMask: 'dd-MMMM-yyyy',
        firstDate: DateTime(2000),
        lastDate: DateTime(2100),
        dateLabelText: 'Date Select',
        onChanged: (val) => print(val),
        validator: (val) {
          print(val);
          return null;
        },
        onSaved: (val) => print(val),
      ),
    );
  }
}
