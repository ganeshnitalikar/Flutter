import 'package:flutter/material.dart';

class Task2 extends StatelessWidget {
  const Task2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Container(
          height: 100,
          width: 100,
          decoration: const BoxDecoration(
              color: Colors.amber,
              border: Border(left: BorderSide(color: Colors.black, width: 5))),
          child: const Center(child: Text("MY APP")),
        ),
      ),
    );
  }
}
