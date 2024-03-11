import 'package:flutter/material.dart';
import 'package:adv_todo/tododatabase.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

dynamic database;

class Taskclass {
  int? taskId;
  String title;
  String desp;
  String date;

  Taskclass(
      {required this.title,
      required this.desp,
      required this.date,
      this.taskId});

  Map<String, dynamic> taskMap() {
    return {
      "taskId": taskId,
      "title": title,
      "desp": desp,
      "date": date,
    };
  }

  @override
  String toString() {
    return "{taskId:$taskId,title:$title,desp$desp,date$date}";
  }
}

Future<List<Taskclass>> getTaskData() async {
  final localDB = await database;

  List<Map<String, dynamic>> mapEntry = await localDB.query("Task");
  return List.generate(mapEntry.length, (i) {
    return Taskclass(
      taskId: mapEntry[i]["taskId"],
      title: mapEntry[i]["title"],
      desp: mapEntry[i]["desp"],
      date: mapEntry[i]["date"],
    );
  });
}

//--------------------------------INSERT QUERY------------------------------------>
Future<void> insertTaskData(Taskclass task) async {
  final localDB = await database;

  localDB.insert(
    "Taskclass",
    task.taskMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

//--------------------------------UPDATE QUERY------------------------------------>

Future<void> updateTaskData(Taskclass obj) async {
  final localDB = await database;
  await localDB.update("Taskclass", obj.taskMap(),
      where: "taskId = ?", whereArgs: [obj.taskId]);
}
//-------------------------------DELETE QUERY------------------------------------->

Future<void> deleteTaskData(Taskclass task) async {
  final localDb = await database;

  await localDb.delete(
    "Task",
    where: "taskId = ?",
    whereArgs: [task.taskId],
  );
}

void main() async {
  runApp(const MainApp());

  database = openDatabase(
    join(await getDatabasesPath(), "todoDB.db"),
    version: 1,
    onCreate: (db, version) {
      db.execute('''CREATE TABLE Task(
        taskId INT PRIMARY KEY,
        title TEXT,
        desp TEXT,
        date INT
        
      )''');
    },
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TODOAppUI(),
    );
  }
}
