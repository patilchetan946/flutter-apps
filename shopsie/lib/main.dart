import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:shopsie/login.dart';
import 'package:path/path.dart';

dynamic database;

class CartModelclass {
  int? orderNo;
  String name;
  String address;
  String phone;

  CartModelclass({
    this.orderNo,
    required this.name,
    required this.address,
    required this.phone,
  });
  Map<String, dynamic> shopsieMap() {
    return {
      "name": name,
      "address": address,
      "phone": phone,
    };
  }
}

List<CartModelclass> obj1 = [];
List<CartModelclass> obj2 = [];

Future getdata() async {
  List<CartModelclass> obj1 = await getOrderData();
  obj2.clear();
  for (int i = 0; i < obj1.length; i++) {
    obj2.add(obj1[i]);
  }
}

//--------------------------------------DELETE QUERY---------------------------------->
Future<void> deleteOrderData(int data) async {
  final localDB = await database;

  await localDB.delete("Order1", where: "orderNo=?", whereArgs: [data]);
}

//--------------------------------UPDATE QUERY-------------------------------------->
Future<void> updateOrderData(CartModelclass obj) async {
  final localDB = await database;

  await localDB.update("Order1", obj.shopsieMap(),
      where: "orderNo=?", whereArgs: [obj.orderNo]);
}

//---------------------------INSERT QUERY------------------------------------->
Future<void> insertOrderData(CartModelclass obj) async {
  final localDB = await database;

  await localDB.insert(
    "Order1",
    obj.shopsieMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

//-------------------------QUERY METHOD TO RETURN A LIST OF MAP------------------------>
Future<List<CartModelclass>> getOrderData() async {
  final localDB = await database;
  List<Map<String, dynamic>> orderMap = await localDB.query("Order1");
  return List.generate(orderMap.length, (i) {
    return CartModelclass(
      orderNo: orderMap[i]["orderNo"],
      name: orderMap[i]["name"],
      address: orderMap[i]["address"],
      phone: orderMap[i]["phone"],
    );
  });
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  database = openDatabase(
    join(await getDatabasesPath(), "ShopsieDB.db"),
    version: 1,
    onCreate: (db, version) async {
      await db.execute('''CREATE TABLE Order1(
        orderNo INTEGER PRIMARY KEY,
        name TEXT,
        address TEXT,
        phone TEXT
      )''');
    },
  );
  await getdata();

  // print(obj2[0].name);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
