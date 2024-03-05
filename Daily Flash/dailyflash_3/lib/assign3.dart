import "package:flutter/material.dart";

class Assign3 extends StatefulWidget {
  const Assign3({super.key});

  @override
  State createState() => _Assign3State();
}

class _Assign3State extends State {
  int flag = 0;
  colors() {
    if (flag % 2 == 0) {
      return Colors.red;
    } else {
      return Colors.green;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assign3"),
      ),
      body: Center(
          child: GestureDetector(
        onTap: () {
          setState(() {
            colors();
            flag++;
          });
        },
        child: Container(
          height: 200,
          width: 200,
          decoration:
              BoxDecoration(border: Border.all(color: colors(), width: 5)),
        ),
      )),
    );
  }
}
