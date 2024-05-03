import 'package:flutter/material.dart';
<<<<<<<< HEAD:counter/lib/main.dart
import 'package:counter/counter.dart';
========
import 'package:course_ui/Course_UI.dart';
>>>>>>>> 00349737d853044cc136c4ead5f56efe705f591e:Assignments/course_ui/lib/main.dart

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
<<<<<<<< HEAD:counter/lib/main.dart
      home: Counter(),
========
      home: EduApp(),
>>>>>>>> 00349737d853044cc136c4ead5f56efe705f591e:Assignments/course_ui/lib/main.dart
    );
  }
}
