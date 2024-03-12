import 'package:dailyflash_1/tasks/task1.dart';
import 'package:dailyflash_1/tasks/task2.dart';
import 'package:dailyflash_1/tasks/task3.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomeScreen"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return const Task1();
                }));
              },
              child: const Text("Task 1")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return const Task2();
                }));
              },
              child: const Text("Task 2")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return const Task3();
                }));
              },
              child: const Text("Task 3")),
        ],
      ),
    );
  }
}
