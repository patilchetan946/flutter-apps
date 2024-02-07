import 'package:flutter/material.dart';

class Assign4 extends StatefulWidget {
  const Assign4({super.key});
  @override
  State<Assign4> createState() => _Assign4State();
}

class _Assign4State extends State<Assign4> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Assignment4",
          ),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.indigo,
                height: 100,
                width: 100,
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                color: Colors.pink,
                height: 100,
                width: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
