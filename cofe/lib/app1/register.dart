import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pro/app1/login.dart';
import 'package:pro/app1/login2.dart';

class register extends StatelessWidget {
  const register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Register",
            style:
                TextStyle(fontSize: 30, color: Color.fromARGB(255, 81, 68, 68)),
          ),
          leading: Row(
            children: [
              Container(
                child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'login1');
                    },
                    icon: Icon(Icons.arrow_back)),
              )
            ],
          )),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 90, top: 50),
            width: 300,
            height: 50,
            // color: Colors.amber,
            child: Text(
              'Please Sigup!',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(235, 81, 68, 68)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 240, top: 50),
            width: 100,
            height: 30,
            // color: Colors.red,
            child: Text(
              'Email',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(235, 81, 68, 68)),
            ),
          ),
          Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Input Email',
                  suffixIcon: Icon(Icons.email),
                  suffixIconColor: Color.fromARGB(255, 81, 68, 68),
                  fillColor: Color.fromARGB(255, 81, 68, 68),
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              )),
          Container(
            margin: EdgeInsets.only(right: 240, top: 30),
            width: 100,
            height: 30,
            // color: Colors.red,
            child: Text(
              'Password',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(235, 81, 68, 68)),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.password),
                hintText: 'Password',
                suffixIconColor: Color.fromARGB(255, 81, 68, 68),
                fillColor: Color.fromARGB(255, 81, 68, 68),
                filled: true,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(30)),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 140, top: 30),
            width: 200,
            height: 30,
            // color: Colors.red,
            child: Text(
              'Comfirm Password',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(235, 81, 68, 68)),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.password),
                hintText: 'Password',
                suffixIconColor: Color.fromARGB(255, 81, 68, 68),
                fillColor: Color.fromARGB(255, 81, 68, 68),
                filled: true,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(30)),
              ),
            ),
          ),
          CupertinoButton(
              padding: EdgeInsets.only(top: 50),
              child: Text(
                "Sigup",
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(167, 255, 153, 0)),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => login3(),
                    ));
              })
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}

// Color.fromARGB(255, 81, 68, 68)