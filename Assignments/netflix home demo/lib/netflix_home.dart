import 'package:flutter/material.dart';

class Assignment10 extends StatelessWidget {
  const Assignment10({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
          backgroundColor: Colors.red,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text("MOVIES"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Image.network(
                      "https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg",
                      height: 400,
                      width: 270,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Image.network(
                      "https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg",
                      height: 400,
                      width: 270,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Image.network(
                      "https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg",
                      height: 400,
                      width: 270,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("TV SERIES"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Image.network(
                      "https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg",
                      height: 400,
                      width: 270,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Image.network(
                      "https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg",
                      height: 400,
                      width: 270,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Image.network(
                      "https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg",
                      height: 400,
                      width: 270,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("TV SERIES"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Image.network(
                      "https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg",
                      height: 400,
                      width: 270,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Image.network(
                      "https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg",
                      height: 400,
                      width: 270,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Image.network(
                      "https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg",
                      height: 400,
                      width: 270,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
