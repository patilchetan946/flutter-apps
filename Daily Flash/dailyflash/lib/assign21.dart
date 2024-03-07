import 'package:flutter/material.dart';

class Assign21 extends StatefulWidget {
  const Assign21({super.key});

  @override
  State createState() => _Assign21State();
}

class _Assign21State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Profile Information"),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              "https://static.javatpoint.com/company/images/google-company.png",
              height: 250,
              width: 250,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 10),
            const Text(
              "UserName:Chetan Patil",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const Text(
              "Phone No.:8378874956",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
