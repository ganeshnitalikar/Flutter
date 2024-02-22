import 'package:flutter/material.dart';

class Task2 extends StatelessWidget {
  const Task2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MY APP"),
        centerTitle: true,
        actions: const [Icon(Icons.logout)],
      ),
    );
  }
}
