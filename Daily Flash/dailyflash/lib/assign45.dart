import 'package:flutter/material.dart';

class Assign45 extends StatefulWidget {
  const Assign45({super.key});

  @override
  State createState() => _Assign45State();
}

class _Assign45State extends State {
  TextEditingController nameEditingController = TextEditingController();
  TextEditingController phoneEditingController = TextEditingController();

  String _enteredName = '';
  String _enteredPhone = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assign45"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nameEditingController,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Enter Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  prefixIcon: const Icon(Icons.person)),
            ),
            const SizedBox(height: 5),
            TextField(
              controller: phoneEditingController,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Enter Phone No",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  prefixIcon: const Icon(Icons.phone)),
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
                onTap: () {
                  setState(() {
                    _enteredName = nameEditingController.text;
                    _enteredPhone = phoneEditingController.text;
                  });
                },
                child: const Text(
                  "Submit",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 50,
              width: 400,
              alignment: Alignment.topLeft,
              child: Text("Name = $_enteredName\nPhone No =$_enteredPhone",
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}
