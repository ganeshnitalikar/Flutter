import 'package:flutter/material.dart';

class Task8 extends StatelessWidget {
  const Task8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        height: 300,
        width: 300,
        decoration: BoxDecoration(
            border: Border.all(width: 3, color: Colors.red),
            color: Colors.blue),
      )),
    );
  }
}
