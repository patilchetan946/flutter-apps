import 'package:flutter/material.dart';

class Assign6 extends StatefulWidget {
  const Assign6({super.key});
  @override
  State<Assign6> createState() => _Assign6State();
}

class _Assign6State extends State<Assign6> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "ASSIGNMENT6",
          ),
          backgroundColor: Colors.brown,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.cyan,
                height: 350,
                width: 420,
              ),
              Container(
                color: Colors.deepOrange,
                height: 350,
                width: 420,
              ),
              Container(
                color: Colors.deepPurple,
                height: 350,
                width: 420,
              ),
              Container(
                color: Colors.green,
                height: 350,
                width: 420,
              ),
              Container(
                color: Colors.indigo,
                height: 350,
                width: 420,
              ),
              Container(
                color: Colors.lime,
                height: 350,
                width: 420,
              ),
              Container(
                color: Colors.pink,
                height: 350,
                width: 420,
              ),
              Container(
                color: Colors.red,
                height: 350,
                width: 420,
              ),
              Container(
                color: Colors.white,
                height: 350,
                width: 420,
              ),
              Container(
                color: Colors.yellowAccent,
                height: 350,
                width: 420,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
