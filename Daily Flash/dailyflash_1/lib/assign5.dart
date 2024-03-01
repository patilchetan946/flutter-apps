import "package:flutter/material.dart";

class Assign5 extends StatefulWidget {
  const Assign5({super.key});

  @override
  State createState() => _Assign5State();
}

class _Assign5State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text(
          "Assign4",
          style: TextStyle(
              fontStyle: FontStyle.normal, fontWeight: FontWeight.w500),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
        ),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: const BoxDecoration(
            color: Colors.black,
            boxShadow: [
              BoxShadow(
                  color: Colors.red, offset: Offset(10, 10), blurRadius: 3)
            ],
          ),
        ),
      ),
    );
  }
}
