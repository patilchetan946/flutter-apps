import 'package:flutter/material.dart';
import 'package:listview_demo/Dynamic_listview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DisplayImages(),
    );
  }
}
