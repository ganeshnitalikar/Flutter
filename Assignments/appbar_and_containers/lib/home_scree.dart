import 'package:appbar_and_containers/tasks/task1.dart';
import 'package:appbar_and_containers/tasks/task10.dart';
import 'package:appbar_and_containers/tasks/task2.dart';
import 'package:appbar_and_containers/tasks/task3.dart';
import 'package:appbar_and_containers/tasks/task4.dart';
import 'package:appbar_and_containers/tasks/task5.dart';
import 'package:appbar_and_containers/tasks/task6.dart';
import 'package:appbar_and_containers/tasks/task7.dart';
import 'package:appbar_and_containers/tasks/task8.dart';
import 'package:appbar_and_containers/tasks/task9.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(title: const Text("Assignment 10")),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return const Task1();
                }));
              },
              child: const Text("Task1")),
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
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return const Task4();
                }));
              },
              child: const Text("Task 4")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return const Task5();
                }));
              },
              child: const Text("Task 5")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return const Task6();
                }));
              },
              child: const Text("Task 6")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return const Task7();
                }));
              },
              child: const Text("Task 7")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return const Task8();
                }));
              },
              child: const Text("Task 8")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return const Task9();
                }));
              },
              child: const Text("Task 9")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return const Task10();
                }));
              },
              child: const Text("Task 10")),
        ]),
      ),
    );
  }
}
