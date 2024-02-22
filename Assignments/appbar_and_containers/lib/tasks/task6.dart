import 'package:flutter/material.dart';

class Task6 extends StatelessWidget {
  const Task6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Hello Core2Web"),
          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.red,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.yellow,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.green,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.blueGrey,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.lightGreen,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
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
                    color: Colors.redAccent,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.lightBlue,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.pinkAccent,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ]),
          ),
        ));
  }
}
