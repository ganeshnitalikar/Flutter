import 'package:flutter/material.dart';

class Task5 extends StatefulWidget {
  const Task5({super.key});

  @override
  State<Task5> createState() => _Task5State();
}

class _Task5State extends State<Task5> {
  bool boxColor = false;
  String value = "Click Me";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: boxColor ? Colors.blue : Colors.red,
              borderRadius: BorderRadius.circular(20)),
          child: GestureDetector(
              onTap: () {
                setState(() {
                  boxColor = !boxColor;
                  value = boxColor ? "Container Tapped" : "Click Me";
                });
              },
              child: Text(value)),
        ),
      ),
    );
  }
}
