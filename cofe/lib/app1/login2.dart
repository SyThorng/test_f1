import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pro/login.dart';

class login3 extends StatelessWidget {
  login3({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black,
          title: Text(
            'Login',
            style: TextStyle(
                color: const Color.fromARGB(235, 81, 68, 68), fontSize: 25),
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
      body: Column(children: [
        Container(
          margin: EdgeInsets.only(right: 50, top: 30),
          width: 300,
          height: 50,
          // color: Colors.amber,
          child: Text(
            'Welcome back!',
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
        Padding(
          padding: EdgeInsets.all(10),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(20),
              ),
              fillColor: const Color.fromARGB(188, 81, 68, 68),
              filled: true,
              hintText: 'Input Email',
              hintStyle:
                  const TextStyle(color: Color.fromARGB(222, 32, 31, 38)),
              // prefixIcon: const Icon(
              //   Icons.search,
              //   color: Color.fromARGB(236, 32, 31, 38),
              // )
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 240, top: 50),
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
        Padding(
          padding: EdgeInsets.all(10),
          child: TextField(
            obscureText: true,
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(20),
              ),
              fillColor: const Color.fromARGB(188, 81, 68, 68),
              filled: true,
              hintText: 'password',
              hintStyle:
                  const TextStyle(color: Color.fromARGB(222, 32, 31, 38)),
              // prefixIcon: const Icon(
              //   Icons.search,
              //   color: Color.fromARGB(236, 32, 31, 38),
              // )
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 210, top: 20),
          width: 130,
          height: 30,
          // color: Colors.red,
          child: Text(
            'Forget password?',
            style: TextStyle(fontSize: 15, color: Colors.orange),
          ),
        ),
        InkWell(
          borderRadius: BorderRadius.circular(1200),
          // highlightColor: Colors.amber,
          onTap: () {
            Navigator.pushNamed(context, 'tt');
          },
          child: Container(
            margin: EdgeInsets.only(top: 30),
            height: 50,
            width: 330,
            child: Center(
              child: Text(
                'Login',
                style: TextStyle(color: Colors.orange),
              ),
            ),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 81, 68, 68),
                borderRadius: BorderRadius.circular(30)),
          ),
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Text(
                    "Don't have an account?",
                    style: TextStyle(color: Color.fromARGB(255, 81, 68, 68)),
                  ),
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(100),
                  onTap: () {
                    Navigator.pushNamed(context, 'register');
                  },
                  child: Container(
                    width: 70,
                    height: 40,
                    // color: Colors.indigo,
                    child: Center(
                        child: Text(
                      'Register',
                      style: TextStyle(color: Colors.orange),
                    )),
                  ),
                )
              ],
            ),
          ],
        )
      ]),
      backgroundColor: Colors.black,
    );
  }
}
