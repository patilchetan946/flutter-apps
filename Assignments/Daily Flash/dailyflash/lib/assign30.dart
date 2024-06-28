import 'package:flutter/material.dart';

class Assign30 extends StatefulWidget {
  const Assign30({super.key});

  @override
  State createState() => _Assign30State();
}

class _Assign30State extends State {
  bool box1color = false;
  bool box2color = false;
  bool box3color = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assign29"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                color: box1color ? Colors.red : Colors.white,
                border: Border.all(color: Colors.black, width: 2),
              ),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    box1color = true;
                  });
                },
              ),
            ),
            Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                color: box2color ? Colors.red : Colors.white,
                border: Border.all(color: Colors.black, width: 2),
              ),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    box2color = true;
                  });
                },
              ),
            ),
            Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                color: box3color ? Colors.red : Colors.white,
                border: Border.all(color: Colors.black, width: 2),
              ),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    box3color = true;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
