import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:inherited_ex/main.dart';

class Skills extends StatefulWidget {
  const Skills({super.key});

  @override
  State<Skills> createState() => _SkillState();
}

class _SkillState extends State<Skills> {
  TextEditingController skills = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SharedData sharedDataobj = SharedData.of(context);
    List skill = SharedData.of(context).emp.skill;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Employee"),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
              controller: skills,
              decoration: InputDecoration(
                  labelText: "Enter Skill",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              sharedDataobj.updateSkills(skills.text);
              skills.clear();
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
          ),
          const SizedBox(height: 10),
          ListView.builder(
            itemCount: skill.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1)),
                height: 50,
                width: 350,
                child: Text(
                  "${skill[index]}",
                  style: const TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 30),
                ),
              );
            },
          )
        ],
      )),
    );
  }
}
