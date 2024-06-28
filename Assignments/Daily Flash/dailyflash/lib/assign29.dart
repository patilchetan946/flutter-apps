import 'package:flutter/material.dart';

class Assign29 extends StatefulWidget {
  const Assign29({super.key});

  @override
  State createState() => _Assign29State();
}

class _Assign29State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assign29"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          height: 150,
          width: 400,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 120,
                width: 150,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: Container(
                  color: Colors.red,
                ),
              ),
              Container(
                height: 120,
                width: 150,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: Container(
                  color: Colors.purple,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
