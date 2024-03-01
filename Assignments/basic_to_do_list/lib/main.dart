import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";
import "package:intl/intl.dart";

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ToDoList(),
    );
  }
}

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ToDoListstate();
  }
}

class ToDoListModalclass {
  String? title;
  String? description;
  String? date;

  ToDoListModalclass(
      {required this.title, required this.description, required this.date});
}

class _ToDoListstate extends State {
  TextEditingController titleController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  void submit(bool doedit, [ToDoListModalclass? toDoListModalclassobj]) {
    if (titleController.text.trim().isNotEmpty &&
        descriptionController.text.trim().isNotEmpty &&
        dateController.text.trim().isNotEmpty) {
      if (!doedit) {
        setState(() {
          cardlist.add(ToDoListModalclass(
              title: titleController.text.trim(),
              description: descriptionController.text.trim(),
              date: dateController.text.trim()));
        });
      } else {
        setState(() {
          toDoListModalclassobj!.date = dateController.text.trim();
          toDoListModalclassobj.title = titleController.text.trim();
          toDoListModalclassobj.description = descriptionController.text.trim();
        });
      }
      clearController();
    }
  }

  clearController() {
    titleController.clear();
    descriptionController.clear();
    dateController.clear();
  }

  void removeTasks(ToDoListModalclass toDoListModalclassobj) {
    setState(() {
      cardlist.remove(toDoListModalclassobj);
    });
  }

  void editTask(ToDoListModalclass toDoListModelobj) {
    titleController.text = toDoListModelobj.title!;
    descriptionController.text = toDoListModelobj.description!;
    dateController.text = toDoListModelobj.date!;

    showBottomSheet(true, toDoListModelobj);
  }

  void showBottomSheet(bool doedit, [ToDoListModalclass? toDoListModalobj]) {
    showModalBottomSheet(
      isDismissible: true,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
      )),
      context: context,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                "Create Task",
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Title",
                    style: GoogleFonts.quicksand(
                      color: const Color.fromRGBO(0, 139, 148, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  TextField(
                    controller: titleController,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(0, 139, 148, 1),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.purpleAccent),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      hintText: "Enter Title",
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Description",
                    style: GoogleFonts.quicksand(
                      color: const Color.fromRGBO(0, 139, 148, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  TextField(
                    controller: descriptionController,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(0, 139, 148, 1),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.purpleAccent),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      hintText: "Enter Description",
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Date",
                    style: GoogleFonts.quicksand(
                      color: const Color.fromRGBO(0, 139, 148, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  TextField(
                    controller: dateController,
                    readOnly: true,
                    decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.date_range_rounded),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(0, 139, 148, 1),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.purpleAccent),
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
                      );
                      String formatedDate =
                          DateFormat.yMMMd().format(pickeddate!);
                      setState(() {
                        dateController.text = formatedDate;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 300,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                    doedit ? submit(doedit, toDoListModalobj) : submit(doedit);
                  },
                  child: Text(
                    "Submit",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        );
      },
    );
  }

  List<ToDoListModalclass> cardlist = [];
  List cardcolors = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
        title: Text(
          "To-Do List",
          style: GoogleFonts.quicksand(
              fontWeight: FontWeight.w700,
              fontSize: 26,
              color: const Color.fromRGBO(255, 255, 255, 1)),
        ),
      ),
      body: ListView.builder(
        itemCount: cardlist.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.1),
                    blurRadius: 20,
                    spreadRadius: 1,
                    offset: Offset(0, 10),
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
                color: cardcolors[index % cardcolors.length],
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    //Row1
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(10),
                          height: 52,
                          width: 52,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(255, 255, 255, 1)),
                          child: Image.asset("assets/Group 42 (1).png"),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${cardlist[index].title}",
                                style: GoogleFonts.quicksand(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: const Color.fromRGBO(0, 0, 0, 1),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "${cardlist[index].description}",
                                style: GoogleFonts.quicksand(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10,
                                  color: const Color.fromRGBO(84, 84, 84, 1),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    //Row2
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        children: [
                          Text(
                            "${cardlist[index].date}",
                            style: GoogleFonts.quicksand(
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                              color: const Color.fromRGBO(132, 132, 132, 1),
                            ),
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    editTask(cardlist[index]);
                                  });
                                },
                                child: const Icon(
                                  Icons.edit_outlined,
                                  color: Color.fromRGBO(0, 139, 148, 1),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              GestureDetector(
                                onTap: () {
                                  removeTasks(cardlist[index]);
                                },
                                child: const Icon(
                                  Icons.delete_outline,
                                  color: Color.fromRGBO(0, 139, 148, 1),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            showBottomSheet(false);
            clearController();
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
