import 'package:flutter/material.dart';

class Task5 extends StatelessWidget {
  const Task5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Hello Core2Web"),
          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(
              "assets/noprofile.png",
              height: 150,
              width: 150,
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/noprofile.png",
              height: 150,
              width: 150,
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/noprofile.png",
              height: 150,
              width: 150,
            ),
          ]),
        ));
  }
}
