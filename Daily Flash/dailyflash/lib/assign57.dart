import 'package:flutter/material.dart';

class Assign57 extends StatefulWidget {
  const Assign57({super.key});

  @override
  State createState() => _Assign57();
}

class _Assign57 extends State {
  TextEditingController daysEditingController = TextEditingController();
  List days = ["Monday,Tuesday"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assign57"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                onSubmitted: (value) {
                  setState(() {
                    if (value.isNotEmpty) {
                      days.add(value);
                      daysEditingController.clear();
                    }
                  });
                },
                controller: daysEditingController,
                decoration: InputDecoration(
                  labelText: "Enter Wednesday",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                  padding: const EdgeInsets.all(50), child: Text("$days")),
            ),
          ],
        ),
      ),
    );
  }
}
