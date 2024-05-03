import 'package:flutter/material.dart';
import 'package:inherited_ex/main.dart';
import 'package:inherited_ex/skill.dart';

class AccessdataWidget extends StatelessWidget {
  const AccessdataWidget({super.key});
  @override
  Widget build(BuildContext context) {
    SharedData sharedDataobj = SharedData.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Employee"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text("Id:${sharedDataobj.emp.id}"),
            const SizedBox(height: 20),
            Text("Name:${sharedDataobj.emp.pass}"),
            const SizedBox(height: 20),
            Text("Username:${sharedDataobj.emp.userName}"),
            const SizedBox(height: 20),
            //const AccessDataChild(),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Skills();
                }));
              },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.purple.shade100,
                    borderRadius: BorderRadius.circular(30)),
                child: const Text(
                  "Add Skill",
                  style: TextStyle(color: Colors.purple, fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AccessDataChild extends StatelessWidget {
  const AccessDataChild({super.key});

  @override
  Widget build(BuildContext context) {
    SharedData sharedDataobj =
        context.dependOnInheritedWidgetOfExactType<SharedData>()!;
    return Text("${sharedDataobj}");
  }
}
