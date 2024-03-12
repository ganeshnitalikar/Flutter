import 'package:flutter/material.dart';

class Task2 extends StatelessWidget {
  const Task2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        backgroundColor: Colors.red,
        title: const Text("My App"),
        centerTitle: true,
        actions: const [
          Icon(Icons.notifications),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.help),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.logout),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
