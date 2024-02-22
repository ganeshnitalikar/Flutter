import 'dart:math';

import 'package:flutter/material.dart';

class Assignment8 extends StatefulWidget {
  const Assignment8({super.key});

  @override
  State<Assignment8> createState() => _Assignment8State();
}

class _Assignment8State extends State<Assignment8> {
  final List<int> _list = <int>[
    121,
    12,
    32,
    34,
    56,
    78,
    153,
    90,
  ];
  int palindromeCount = 0;
  int armStrongCount = 0;
  int countArmsStrong() {
    for (int i = 0; i < _list.length; i++) {
      int n = _list[i];
      int sum = 0;
      int counter = 0;
      int rem = 0;

      while (n != 0) {
        n = n ~/ 10;
        counter++;
      }
      n = _list[i];

      while (n > 0) {
        rem = n % 10;
        sum = sum + pow(rem, counter) as int;
        n = n ~/ 10;
      }

      if (sum == _list[i]) {
        armStrongCount++;
      }
    }
    return 0;
  }

  void countPalindrome() {
    for (int i = 0; i < _list.length; i++) {
      int temp = _list[i].abs();
      int reverse = 0;

      while (temp != 0) {
        reverse = reverse * 10 + temp % 10;
        temp = temp ~/ 10;
      }

      if (reverse == _list[i]) {
        palindromeCount++;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 8"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("List of numbers:"),
              const SizedBox(height: 10),
              Text("$_list"),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      palindromeCount = 0;
                    });
                    countPalindrome();
                  },
                  child: const Text("Check Palindrome")),
              const SizedBox(height: 10),
              Text("Number of Palindrome numbers: $palindromeCount"),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      armStrongCount = 0;
                    });
                    countArmsStrong();
                  },
                  child: const Text("ArmStrong Number")),
              Text("Armstorng numbers: $armStrongCount"),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      palindromeCount = 0;
                      armStrongCount = 0;
                    });
                  },
                  child: const Text("Clear"))
            ]),
      ),
    );
  }
}
