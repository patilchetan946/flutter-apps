import 'package:flutter/material.dart';

class Assign65 extends StatefulWidget {
  const Assign65({super.key});

  @override
  State createState() => _Assign65();
}

class _Assign65 extends State {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assign65"),
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
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: "Enter username",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please Enter username";
                    } else if (value.length < 6 || value.length > 20) {
                      return "length must be between 6-20 characters";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  // keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      label: const Text("Enter Password"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter Password';
                    } else if (value.length < 8 || value.length > 20) {
                      return 'Password must be between 8 and 20 characters';
                    } else if (!value.contains(RegExp(r'[A-Z]'))) {
                      return 'Password must contain at least one capital letter';
                    } else if (!value.contains(RegExp(r'[a-z]'))) {
                      return 'Password must contain at least one small letter';
                    } else if (!value.contains(RegExp(r'[0-9]'))) {
                      return 'Password must contain at least one number';
                    } else if (!value
                        .contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
                      return 'Password must contain at least one special character';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
