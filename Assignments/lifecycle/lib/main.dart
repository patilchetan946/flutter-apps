import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Lifecycle(),
    );
  }
}

class Lifecycle extends StatefulWidget {
  const Lifecycle({super.key});

  @override
  State createState() {
    print("in create State");
    return _Lifecycle();
  }
}

class _Lifecycle extends State {
  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
    print("In Set State");
  }

  @override
  void initState() {
    super.initState();
    print("In initState");
  }

  @override
  void didChangeDependencies() {
    print("IN didchangesDependecies");
    super.didChangeDependencies();
  }

  void didupdatewidget() {
    super.didUpdateWidget(widget);
    print("IN didupdatewidget");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("LyfCycle"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.orange,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: Text("Lyfcycle"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
