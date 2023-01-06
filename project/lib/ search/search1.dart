import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project/homework/list.dart';

class search extends StatefulWidget {
  search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  TextEditingController search_control = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          decoration: BoxDecoration(
              border: Border.all(
            color: Colors.black,
          )),
          height: 50,
          child: Center(
            child: TextField(
              controller: search_control,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                  label: Text('Search'),
                  hintText: "Input Search"),
              onChanged: (value) {
                setState(() {
                  Fileproduct = listproduct
                      .where((element) => element.name!
                          .toLowerCase()
                          .contains(value.toLowerCase()))
                      .toList();
                });
              },
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: search_control.text.isEmpty || search_control.text == ''
            ? listproduct.length
            : Fileproduct.length,
        itemBuilder: (context, index) {
          var pro = search_control.text.isEmpty || search_control.text == ''
              ? listproduct[index]
              : Fileproduct[index];
          return Card(
            child: ListTile(
              title: Text('${pro.name}'),
              leading: CircleAvatar(
                child: Text(pro.code.toString()),
              ),
              trailing: Text('\$ ${pro.price}'),
            ),
          );
        },
      ),
    );
  }
}

class Product {
  int? code;
  String? name;
  double? price;

  Product({this.code, this.name, this.price});
}

List<Product> Fileproduct = [];

List<Product> listproduct = [
  Product(code: 11, name: 'COCA', price: 90.88),
  Product(code: 22, name: 'SODA', price: 90.88),
  Product(code: 33, name: 'Sting', price: 90.88),
  Product(code: 44, name: 'ABC', price: 90.88),
  Product(code: 55, name: 'Milk', price: 90.88),
  Product(code: 66, name: 'tea', price: 90.88),
];
