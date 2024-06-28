import 'package:flutter/material.dart';

class Assign58 extends StatefulWidget {
  const Assign58({super.key});

  @override
  State createState() => _Assign58();
}

class _Assign58 extends State {
  TextEditingController userEditingController = TextEditingController();
  TextEditingController clgEditingController = TextEditingController();
  List user = [];

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assign58"),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  controller: userEditingController,
                  decoration: InputDecoration(
                    labelText: "Enter Username",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  validator: (value) {
                    print("IN USERNAME VALIDATOR");
                    if (value == null || value.isEmpty) {
                      return "Enter username";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  controller: clgEditingController,
                  decoration: InputDecoration(
                    labelText: "Enter your college",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  validator: (value) {
                    print("IN COLLEGE VALIDATOR");
                    if (value == null || value.isEmpty) {
                      return "Enter College name";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              GestureDetector(
                onTap: () {
                  _formKey.currentState!.validate();
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.purple.shade100,
                      borderRadius: BorderRadius.circular(30)),
                  child: const Text(
                    "Submit",
                    style: TextStyle(color: Colors.purple, fontSize: 20),
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
