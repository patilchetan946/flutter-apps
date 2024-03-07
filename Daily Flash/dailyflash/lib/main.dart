import 'package:flutter/material.dart';
import "package:dailyflash_1/assign30.dart";

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Assign30(),
    );
  }
}
