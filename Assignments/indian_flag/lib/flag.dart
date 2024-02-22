import 'package:flutter/material.dart';

class Flag extends StatefulWidget {
  const Flag({super.key});

  @override
  State<Flag> createState() => _FlagState();
}

class _FlagState extends State<Flag> {
  int _count = 0;

  void _increment() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(
        title: const Text(
          "Build Flag",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        actions: [
          TextButton(
              onPressed: () {
                setState(() {
                  _count = 0;
                });
              },
              child: const Text("Reset"))
        ],
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: _count == 0
          ? const Center(
              child: Text(
                "Press Add to Build Flag",
                style: TextStyle(color: Colors.white),
              ),
            )
          : Center(
              child: _count == 1
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 100,
                          width: double.infinity,
                          color: Colors.orange,
                        ),
                      ],
                    )
                  : _count == 2
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 100,
                              width: double.infinity,
                              color: Colors.orange,
                            ),
                            Container(
                              height: 100,
                              alignment: Alignment.center,
                              color: Colors.white,
                              child: Image.network(
                                "https://as1.ftcdn.net/v2/jpg/03/11/13/46/1000_F_311134651_RXMvbUB3h089Js0ODvuHrttmsON9Tpik.jpg",
                                height: 100,
                                width: 100,
                              ),
                            ),
                          ],
                        )
                      : _count == 3
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 100,
                                  width: double.infinity,
                                  color: Colors.orange,
                                ),
                                Container(
                                  height: 100,
                                  alignment: Alignment.center,
                                  color: Colors.white,
                                  child: Image.network(
                                    "https://as1.ftcdn.net/v2/jpg/03/11/13/46/1000_F_311134651_RXMvbUB3h089Js0ODvuHrttmsON9Tpik.jpg",
                                    height: 100,
                                    width: 100,
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  width: double.infinity,
                                  color: Colors.green,
                                )
                              ],
                            )
                          : Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 100,
                                  width: double.infinity,
                                  color: Colors.orange,
                                ),
                                Container(
                                  height: 100,
                                  alignment: Alignment.center,
                                  color: Colors.white,
                                  child: Image.network(
                                    "https://as1.ftcdn.net/v2/jpg/03/11/13/46/1000_F_311134651_RXMvbUB3h089Js0ODvuHrttmsON9Tpik.jpg",
                                    height: 100,
                                    width: 100,
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  width: double.infinity,
                                  color: Colors.green,
                                )
                              ],
                            ),
            ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: () {
          _increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
