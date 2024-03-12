import 'package:flutter/material.dart';

class Task2 extends StatelessWidget {
  const Task2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/img.jpg"), fit: BoxFit.cover)),
          child: const Center(
              child: Text(
            "THIS IS TEXT ON  IMAGE",
            style: TextStyle(
                fontSize: 30, color: Colors.red, fontWeight: FontWeight.bold),
          )),
        ),
      ),
    );
  }
}
