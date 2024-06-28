import 'package:flutter/material.dart';

class Assign41 extends StatefulWidget {
  const Assign41({super.key});

  @override
  State createState() => _Assign41State();
}

class _Assign41State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Assign41"),
        ),
        body: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(50),
            children: [
              Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    color: Colors.red,
                  ),
                  const SizedBox(width: 20),
                  Container(
                    height: 60,
                    width: 60,
                    color: Colors.black,
                  ),
                  const SizedBox(width: 20),
                  Container(
                    height: 60,
                    width: 60,
                    color: Colors.green,
                  ),
                  const SizedBox(width: 20),
                  Container(
                    height: 60,
                    width: 60,
                    color: Colors.orange,
                  ),
                  const SizedBox(width: 20),
                  Container(
                    height: 60,
                    width: 60,
                    color: Colors.purple,
                  ),
                ],
              ),
            ]));
  }
}
