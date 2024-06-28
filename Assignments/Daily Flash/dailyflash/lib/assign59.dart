import 'package:flutter/material.dart';

class Assign59 extends StatefulWidget {
  const Assign59({super.key});

  @override
  State createState() => _Assign59();
}

class ListModalclass {
  String? name;
  String? clgname;

  ListModalclass({
    required this.name,
    required this.clgname,
  });
}

class _Assign59 extends State {
  TextEditingController nameEditingController = TextEditingController();
  TextEditingController clgEditingController = TextEditingController();
  List user = [];

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assign59"),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  controller: nameEditingController,
                  decoration: InputDecoration(
                    labelText: "Enter Username",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  validator: (value) {
                    print("IN USERNAME VALIDATOR");
                    if (value == null || value.isEmpty) {
                      return "Please enter username";
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
                    print("IN PASSWORD VALIDATOR");
                    if (value == null || value.isEmpty) {
                      return "Please enter password";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              GestureDetector(
                onTap: () {
                  _formKey.currentState!.validate();
                  if (nameEditingController.text.trim().isNotEmpty &&
                      clgEditingController.text.trim().isNotEmpty) {
                    setState(() {
                      user.add(ListModalclass(
                        name: nameEditingController.text.trim(),
                        clgname: clgEditingController.text.trim(),
                      ));
                    });
                  }
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
              ),
              const SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  itemCount: user.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(5),
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(25),
                          child: Column(
                            children: [
                              Text("Name:${user[index].name}"),
                              const SizedBox(height: 5),
                              Text("CollegeName:${user[index].clgname}")
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
