import 'package:flutter/material.dart';

class Task1 extends StatelessWidget {
  const Task1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          padding: const EdgeInsets.all(20),
          color: Colors.blue,
          child: Image.asset(
            "assets/img.jpg",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
