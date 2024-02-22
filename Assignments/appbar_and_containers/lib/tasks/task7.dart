import 'package:flutter/material.dart';

class Task7 extends StatelessWidget {
  const Task7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/330px-Image_created_with_a_mobile_phone.png',
                height: 150,
                width: 300,
              ),
              const SizedBox(
                width: 20,
              ),
              Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/330px-Image_created_with_a_mobile_phone.png',
                height: 150,
                width: 300,
              ),
              const SizedBox(
                width: 20,
              ),
              Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/330px-Image_created_with_a_mobile_phone.png',
                height: 150,
                width: 300,
              ),
              const SizedBox(
                width: 20,
              ),
              Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/330px-Image_created_with_a_mobile_phone.png',
                height: 150,
                width: 300,
              ),
              const SizedBox(
                width: 20,
              ),
              Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/330px-Image_created_with_a_mobile_phone.png',
                height: 150,
                width: 300,
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
