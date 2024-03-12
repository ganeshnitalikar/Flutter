import 'package:flutter/material.dart';

class Task1 extends StatelessWidget {
  const Task1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.red),
            borderRadius: BorderRadius.circular(50),
          ),
          child: const Center(child: Text("MY APP")),
        ),
      ),
    );
  }
}
