import 'package:flutter/material.dart';

class Assign44 extends StatefulWidget {
  const Assign44({super.key});

  @override
  State createState() => _Assign44State();
}

class _Assign44State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assign44"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.purple.shade100,
                  hintText: "Enter Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  prefixIcon: const Icon(Icons.person)),
            ),
            const SizedBox(height: 5),
            Container(
              height: 40,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.purple.shade200,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.purple, width: 2)),
              alignment: Alignment.center,
              child: GestureDetector(
                child: const Text(
                  "Submit",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
