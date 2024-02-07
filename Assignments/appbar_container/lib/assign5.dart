import 'package:flutter/material.dart';

class Assign5 extends StatefulWidget {
  const Assign5({super.key});
  @override
  State<Assign5> createState() => _Assign5State();
}

class _Assign5State extends State<Assign5> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "ASSIGNMENT5",
          ),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                "assets/images/download (1).jpeg",
                height: 200,
                width: 200,
              ),
              Image.asset(
                "assets/images/download (2).jpeg",
                height: 200,
                width: 200,
              ),
              Image.asset(
                "assets/images/download.jpeg",
                height: 200,
                width: 200,
              )
            ],
          ),
        ),
      ),
    );
  }
}
