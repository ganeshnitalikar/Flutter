import 'package:flutter/material.dart';

class Task9 extends StatelessWidget {
  const Task9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(width: 2, color: Colors.red),
              borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }
}
