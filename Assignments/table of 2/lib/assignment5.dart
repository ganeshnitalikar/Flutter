import 'package:flutter/material.dart';

class Assignment5 extends StatefulWidget {
  const Assignment5({super.key});

  @override
  State<Assignment5> createState() => _Assignment5State();
}

class _Assignment5State extends State<Assignment5> {
  int _value = 0;
  int _count = 0;

  void calculate() {
    setState(() {
      _value = ++_count * 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Assignment 5'),
        ),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text("Table Of Two "),
              const SizedBox(height: 20),
              Text("2 x $_count =  $_value"),
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: calculate,
          child: const Icon(Icons.add),
        ));
  }
}
