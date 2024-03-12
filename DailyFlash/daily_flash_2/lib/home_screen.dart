import 'package:daily_flash_2/tasks/task1.dart';
import 'package:daily_flash_2/tasks/task2.dart';
import 'package:daily_flash_2/tasks/task3.dart';
import 'package:daily_flash_2/tasks/task4.dart';
import 'package:daily_flash_2/tasks/task5.dart';
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
                child: const Text("Task 1 ")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Task2();
                  }));
                },
                child: const Text("Task 2 ")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Task3();
                  }));
                },
                child: const Text("Task 3 ")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Task4();
                  }));
                },
                child: const Text("Task 4 ")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Task5();
                  }));
                },
                child: const Text("Task 5 ")),
          ],
        ),
      ),
    );
  }
}
