import 'package:flutter/material.dart';

class Assign61 extends StatefulWidget {
  const Assign61({super.key});

  @override
  State createState() => _Assign61();
}

class _Assign61 extends State {
  TextEditingController user = TextEditingController();
  TextEditingController pass = TextEditingController();

  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assign61"),
        centerTitle: true,
      ),
      body: Center(
          child: Form(
        key: _key,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: user,
                decoration: InputDecoration(
                    label: const Text("Enter Username"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter Username";
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: pass,
                decoration: InputDecoration(
                    label: const Text("Enter Password"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter Password";
                  } else {
                    return null;
                  }
                },
              ),
            ),
            GestureDetector(
              onTap: () {
                _key.currentState!.validate();
              },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  "Submit",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
