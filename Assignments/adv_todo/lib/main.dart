import 'package:adv_todo/login.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

List cardlist = [];

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
    return 'title:$title,desc:$desp,date:$date';
  }
}

//--------------------------------DATABASE------------------------------------>
dynamic database;

Future<void> createDatabase() async {
  database = await openDatabase(
    join(await getDatabasesPath(), "TodoDB.db"),
    version: 1,
    onCreate: (db, version) async {
      print("Creating TodoTask table...");
      await db.execute('''CREATE TABLE IF NOT EXISTS TodoTask1(
        taskId INTEGER PRIMARY KEY AUTOINCREMENT,
        title TEXT,
        desp TEXT,
        date INT 
      )''');
    },
  );
  await getTaskData();
  print("Database created successfully.");
}

//--------------------------------GET DATA------------------------------------>
Future<List> getTaskData() async {
  final localDB = database;

  List<Map<String, dynamic>> mapEntry = await localDB.query("TodoTask1");
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
Future<void> insertTaskData(Taskclass taskclassobj) async {
  final localDB = await database;

  await localDB.insert(
    "TodoTask1",
    taskclassobj.taskMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
  cardlist = await getTaskData();
}

//--------------------------------UPDATE QUERY------------------------------------>

Future<void> updateTaskData(Taskclass taskclassobj) async {
  final localDB = await database;
  await localDB.update("TodoTask1", taskclassobj.taskMap(),
      where: "taskId = ?", whereArgs: [taskclassobj.taskId]);

  cardlist = await getTaskData();
}
//-------------------------------DELETE QUERY------------------------------------->

Future<void> deleteTaskData(Taskclass taskclassobj) async {
  final localDb = await database;

  await localDb.delete(
    "TodoTask1",
    where: "taskId = ?",
    whereArgs: [taskclassobj.taskId],
  );

  cardlist = await getTaskData();
}

void getdata() async {
  cardlist = await getTaskData();
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await createDatabase();
  getdata();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
    );
  }
}
