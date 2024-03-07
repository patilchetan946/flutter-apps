import "package:flutter/material.dart";

class Assign11 extends StatefulWidget {
  const Assign11({super.key});

  @override
  State createState() => _Assign11State();
}

class _Assign11State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assign11"),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          padding: const EdgeInsets.all(20),
          decoration:
              BoxDecoration(border: Border.all(color: Colors.black, width: 2)),
          alignment: Alignment.center,
          child: Image.network(
            "https://images.unsplash.com/photo-1611316185995-9624c94487d1?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGhkJTIwcGhvdG9zfGVufDB8fDB8fHww",
            height: 150,
            width: 200,
          ),
        ),
      ),
    );
  }
}
