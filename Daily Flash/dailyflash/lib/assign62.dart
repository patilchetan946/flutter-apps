import 'package:flutter/material.dart';

class Assign62 extends StatefulWidget {
  const Assign62({super.key});

  @override
  State createState() => _Assign62();
}

class _Assign62 extends State {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assign62"),
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
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      label: const Text("Enter Phone No."),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter Phone No.";
                    } else if (value
                        .contains(RegExp(r'[!@#%^&*(),.?":{}|<>]'))) {
                      return "Remove Special Characters";
                    } else if (value.length != 10) {
                      return "Enter 10 digit no";
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
        ),
      ),
    );
  }
}
