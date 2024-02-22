import 'package:flutter/material.dart';

class ContainerRow extends StatelessWidget {
  const ContainerRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container Row'),
      ),
      body: SizedBox(
        height: double.infinity,
        child: Row(children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.blue,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.green,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.yellow,
          ),
        ]),
      ),
    );
  }
}
