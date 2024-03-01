import 'package:flutter/material.dart';

class style8 extends StatefulWidget {
  const style8({super.key});

  @override
  State createState() => _style8State();
}

class _style8State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Container Style8(Box Shadow)")),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
            border: Border.all(
              color: Colors.blue,
              width: 5,
            ),
            boxShadow: const [
              BoxShadow(
                  color: Colors.purple, offset: Offset(30, 30), blurRadius: 8),
              BoxShadow(
                  color: Colors.red, offset: Offset(30, 30), blurRadius: 8),
              BoxShadow(
                  color: Colors.green, offset: Offset(30, 30), blurRadius: 8),
            ],
          ),
        ),
      ),
    );
  }
}
