import 'dart:developer';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    log("IN BUILD MY APP");
    return ChangeNotifierProvider(
      create: (context) {
        return Company(companyName: "Google", empCount: 250);
      },
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainApp(),
      ),
    );
  }
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State createState() => _MainAppState();
}

class _MainAppState extends State {
  @override
  Widget build(BuildContext context) {
    log("IN MAINApp BUILD");
    return Scaffold(
      appBar: AppBar(
        title: const Text("ChangeNotifierProvider"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(Provider.of<Company>(context).companyName),
          const SizedBox(height: 30),
          Text("${Provider.of<Company>(context).empCount}"),
          const SizedBox(height: 30),
          GestureDetector(
            onTap: () {
              Provider.of<Company>(context, listen: false)
                  .changeCompany("Facebook", 500);
            },
            child: const SizedBox(
              height: 40,
              width: 90,
              child: Text("Submit"),
            ),
          ),
        ],
      ),
    );
  }
}

class Company with ChangeNotifier {
  String companyName;
  int empCount;

  Company({required this.companyName, required this.empCount});

  void changeCompany(String companyName, int empCount) {
    this.companyName = companyName;
    this.empCount = empCount;
    notifyListeners();
  }
}
