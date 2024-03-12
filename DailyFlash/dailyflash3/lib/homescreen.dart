import 'package:dailyflash3/tasks/task1.dart';
import 'package:dailyflash3/tasks/task2.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Task1();
                  }));
                },
                child: const Text("Task 1")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Task2();
                  }));
                },
                child: const Text("Task 2")),
          ],
        ),
      ),
    );
  }
}
