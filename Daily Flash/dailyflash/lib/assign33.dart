import 'package:flutter/material.dart';

class Assign33 extends StatefulWidget {
  const Assign33({super.key});

  @override
  State createState() => _Assign33State();
}

class _Assign33State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assign33"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.green,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.red,
                      offset: Offset(1, 1),
                      blurRadius: 10,
                    ),
                  ],
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
            ),
            const SizedBox(width: 10),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.orange,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.blue,
                      offset: Offset(1, 1),
                      blurRadius: 10,
                    ),
                  ],
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
            ),
          ],
        ),
      ),
    );
  }
}
