import 'package:flutter/material.dart';

class Assignment11 extends StatelessWidget {
  const Assignment11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Container(
        color: Colors.blue,
        child: Container(
          height: 250,
          width: 250,
          color: Colors.amber,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(30),
          child: Image.network(
            'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/330px-Image_created_with_a_mobile_phone.png',
          ),
        ),
      )),
    );
  }
}
