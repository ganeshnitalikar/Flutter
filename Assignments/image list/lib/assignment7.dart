import 'package:flutter/material.dart';

class Assignment7 extends StatefulWidget {
  const Assignment7({super.key});

  @override
  State<Assignment7> createState() => _Assignment7State();
}

class _Assignment7State extends State<Assignment7> {
  int? _selectedIndex = 0;
  final List<String> imageList = [
    'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
    'https://picsum.photos/250?image=4',
    'https://picsum.photos/250?image=9',
  ];
  void showNextIndex() {
    setState(() {
      if (_selectedIndex == imageList.length - 1) {
        _selectedIndex = 0;
      } else {
        _selectedIndex = _selectedIndex! + 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: const Text('Assignment 7'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(imageList[_selectedIndex!]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 0;
                    });
                  },
                  child: const Text("Reset")),
              ElevatedButton(
                  onPressed: showNextIndex, child: const Text("Next")),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (_selectedIndex == 0) {
                        _selectedIndex = imageList.length - 1;
                      } else {
                        _selectedIndex = _selectedIndex! - 1;
                      }
                    });
                  },
                  child: const Text("Previous")),
            ],
          ),
        ],
      )),
    );
  }
}
