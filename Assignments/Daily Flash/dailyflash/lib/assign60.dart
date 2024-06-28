import 'package:flutter/material.dart';
import "package:intl/intl.dart";

class Assign60 extends StatefulWidget {
  const Assign60({super.key});

  @override
  State createState() => _Assign60();
}

class _Assign60 extends State {
  TextEditingController dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assign60"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: TextField(
            controller: dateController,
            readOnly: true,
            decoration: InputDecoration(
              suffixIcon: const Icon(
                Icons.date_range_rounded,
                color: Colors.purple,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: Colors.purple,
                ),
              ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.purpleAccent),
                borderRadius: BorderRadius.circular(12),
              ),
              hintText: "Enter Date",
            ),
            onTap: () async {
              DateTime? pickeddate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2030),
                  builder: (context, child) {
                    return Theme(
                      data: Theme.of(context).copyWith(
                          colorScheme: ColorScheme.fromSwatch(
                        primarySwatch: Colors.purple,
                        cardColor: Colors.white,
                      )),
                      child: child!,
                    );
                  });
              String formatedDate = DateFormat.yMMMd().format(pickeddate!);
              setState(() {
                dateController.text = formatedDate;
              });
            },
          ),
        ),
      ),
    );
  }
}
