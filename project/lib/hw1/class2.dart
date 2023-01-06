import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class c2 extends StatelessWidget {
  const c2({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 10),
          child: InkWell(
            onTap: () {},
            child: Container(
              width: 100,
              height: 40,
              child: const Center(
                child: Text(
                  'UX/UI',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 10),
          child: Container(
            width: 100,
            height: 40,
            child: InkWell(
              onTap: () {},
              child: const Center(
                child: Text(
                  'Coding',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),
            ),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue, width: 2),
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 10),
          child: InkWell(
            onTap: () {},
            child: Container(
              width: 100,
              height: 40,
              child: const Center(
                child: Text(
                  'Stack UI',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue, width: 2),
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
