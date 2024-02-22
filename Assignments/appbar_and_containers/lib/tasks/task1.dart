import 'package:flutter/material.dart';

class Task1 extends StatelessWidget {
  const Task1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MY APP"),
        backgroundColor: Colors.red,
        actions: const [
          Icon(Icons.notification_add),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.logout)
        ],
      ),
    );
  }
}
