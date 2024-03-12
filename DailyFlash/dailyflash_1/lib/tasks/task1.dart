import 'package:flutter/material.dart';

class Task1 extends StatelessWidget {
  const Task1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: const Icon(Icons.arrow_back),
        title: const Text("My App"),
        centerTitle: true,
        actions: const [
          Icon(Icons.logout),
        ],
      ),
      body: const Center(child: Text("Task 1")),
    );
  }
}
