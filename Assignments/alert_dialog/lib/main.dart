import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainApp(),
    );
  }
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});
  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  Future<dynamic> showMyDialog() async {
    return await showDialog(
      context: context,
//barrierColor: Colors.black54,
//barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Delete Confirmation"),
          content: const Text(
            "Are you sure you want to delete the selected category?",
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Delete"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Alert Dialog Demo"),
      ),
      body: const Center(
        child: Text("Incubators"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await showMyDialog();
        },
        child: const Text("Delete "),
      ),
    );
  }
}
