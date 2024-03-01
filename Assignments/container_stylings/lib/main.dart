import 'package:flutter/material.dart';
import 'package:container_stylings/style9.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: style9(),
    );
  }
}
