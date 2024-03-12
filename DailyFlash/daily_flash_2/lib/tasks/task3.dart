import 'package:flutter/material.dart';

class Task3 extends StatelessWidget {
  const Task3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(width: 4, color: Colors.blueGrey),
              borderRadius:
                  const BorderRadius.only(topRight: Radius.circular(20))),
        ),
      ),
    );
  }
}
