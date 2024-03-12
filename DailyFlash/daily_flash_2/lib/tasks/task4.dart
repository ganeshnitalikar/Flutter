import 'package:flutter/material.dart';

class Task4 extends StatelessWidget {
  const Task4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 100,
          width: 300,
          padding: const EdgeInsets.only(top: 8, left: 10),
          decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.black),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          child: const Text("MY APP"),
        ),
      ),
    );
  }
}
