import 'package:flutter/material.dart';

class Task4 extends StatelessWidget {
  const Task4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Hello Core2Web"),
          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.blue,
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.red,
            ),
          ]),
        ));
  }
}
