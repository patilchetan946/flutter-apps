import 'package:flutter/material.dart';
import 'package:inherited_ex/employee.dart';
import 'package:inherited_ex/main.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController id = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController username = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // SharedData sharedDataobj = SharedData.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        centerTitle: true,
      ),
      body: Center(
        child: Form(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  controller: id,
                  decoration: InputDecoration(
                      labelText: "Enter Id",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  controller: pass,
                  decoration: InputDecoration(
                      labelText: "Enter Name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  controller: username,
                  decoration: InputDecoration(
                      labelText: "Enter UserName",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (id.text.trim().isNotEmpty &&
                      pass.text.trim().isNotEmpty &&
                      username.text.trim().isNotEmpty) {
                    SharedData sharedDataObj = SharedData.of(context);
                    sharedDataObj.updateData(
                      id: id.text,
                      pass: pass.text,
                      userName: username.text,
                    );
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const AccessdataWidget();
                    }));
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
            ],
          ),
        ),
      ),
    );
  }
}
