import 'package:flutter/material.dart';

class Assignment6 extends StatefulWidget {
  const Assignment6({super.key});

  @override
  State<Assignment6> createState() => _Assignment6State();
}

class _Assignment6State extends State<Assignment6>{
  bool box1 = false;
  bool box2 = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 6"),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: box1 ? Colors.green : Colors.red,
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        box1 = !box1;
                      });
                    },
                    child: const Text("Change Box 1 Color"))
              ],
            ),
            Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: box2 ? Colors.red : Colors.green,
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        box2 = !box2;
                      });
                    },
                    child: const Text("Change Box 2 Color"))
              ],
            ),
          ],
        )
      ]),
    );
  }
}
