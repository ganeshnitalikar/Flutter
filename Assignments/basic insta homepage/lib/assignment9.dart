import 'package:flutter/material.dart';

class Assignment9 extends StatefulWidget {
  const Assignment9({super.key});

  @override
  State<Assignment9> createState() => _Assignment9State();
}

class _Assignment9State extends State<Assignment9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Instagram",
          style: TextStyle(
              fontStyle: FontStyle.italic, color: Colors.black, fontSize: 25),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_rounded),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              "https://dfstudio-d420.kxcdn.com/wordpress/wp-content/uploads/2019/06/digital_camera_photo-980x653.jpg",
              width: double.infinity,
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_outline_rounded)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.comment)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.send)),
              ],
            )
          ],
        )
      ]),
    );
  }
}
