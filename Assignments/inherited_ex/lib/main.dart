import 'package:flutter/material.dart';
import 'package:inherited_ex/login.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SharedData(
        child: const MaterialApp(
      home: Login(),
    ));
  }
}

class Employe {
  String id;
  String pass;
  String userName;
  List skill;
  Employe(
      {required this.id,
      required this.userName,
      required this.pass,
      required this.skill});
}

class SharedData extends InheritedWidget {
  SharedData({super.key, required super.child});

  Employe emp = Employe(id: "", userName: "", pass: "", skill: []);

  static SharedData of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<SharedData>()!;
  }

  void updateData({
    required String id,
    required String pass,
    required String userName,
  }) {
    emp.id = id;
    emp.userName = userName;
    emp.pass = pass;
  }

  void updateSkills(String txt) {
    emp.skill.add(txt);
  }

  @override
  bool updateShouldNotify(SharedData oldWidget) {
    return (emp != oldWidget.emp);
  }
}
