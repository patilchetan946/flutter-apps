import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Quizapp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Quizapp extends StatefulWidget {
  const Quizapp({super.key});
  @override
  State createState() => _QuizappState();
}

class SingleQuestionModel {
  final String? question;
  final List<String>? options;
  final int? answerIndex;

  const SingleQuestionModel({this.question, this.options, this.answerIndex});
}

class _QuizappState extends State {
  List allQuestions = [
    (
      question:
          "__are words that a programming language has set aside for its own use ?",
      options: [
        "Control words",
        "Control structures",
        "Reserved words",
        "Reserved keys"
      ],
      answerIndex: 3,
    ),
    (
      question:
          "The software tools that enable a user to interact with a computer for specific purposes are known as ?",
      options: ["Hardware", "Networked Software", "Shareware", "Applications"],
      answerIndex: 3,
    ),
    (
      question: "_____ is the process of carrying out commands ?",
      options: ["Fetching", "Storing", "Executing", "Decoding"],
      answerIndex: 2,
    ),
    (
      question: "Which of the following is NOT an anti-virus software ?",
      options: ["Avast", "Linux", "Norton", "Kapersky"],
      answerIndex: 1,
    ),
    (
      question: "_______ is the smallest unit of data in a computer ?",
      options: ["Gigabyte", "Bit", "Byte", "Terabyte"],
      answerIndex: 1,
    ),
  ];
  int questionScreen = 0;
  int questionIndex = 0;
  int selectedIndex = -1;
  int noOfCorrectQuestion = 0;

  MaterialStatePropertyAll<Color?> checkAnswer(int buttonIndex) {
    if (selectedIndex != -1) {
      if (buttonIndex == selectedIndex) {
        if (buttonIndex == allQuestions[questionIndex].answerIndex) {
          return const MaterialStatePropertyAll(Colors.green);
        } else {
          return const MaterialStatePropertyAll(Colors.red);
        }
      } else if (buttonIndex == allQuestions[questionIndex].answerIndex) {
        return const MaterialStatePropertyAll(Colors.green);
      } else {
        return const MaterialStatePropertyAll(Colors.white);
      }
    } else {
      return const MaterialStatePropertyAll(Colors.white);
    }
  }

  void validatePage() {
    if (selectedIndex == -1) {
      return;
    }
    if (selectedIndex == allQuestions[questionIndex].answerIndex) {
      noOfCorrectQuestion++;
    }
    if (selectedIndex != -1) {
      if (questionIndex == allQuestions.length - 1) {
        setState(() {
          questionScreen = 2;
        });
      }
      selectedIndex = -1;
      setState(() {
        questionIndex++;
      });
    }
  }

  Scaffold isQuestionScreen() {
    if (questionScreen == 0) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "QuizApp",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                "assets/2124.png_860-removebg-preview (1).png",
                height: 400,
                width: 400,
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  side: const MaterialStatePropertyAll(
                    BorderSide(color: Colors.purple),
                  ),
                  fixedSize: const MaterialStatePropertyAll(
                    Size(150, 60),
                  ),
                  backgroundColor: const MaterialStatePropertyAll(Colors.white),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    questionScreen++;
                  });
                },
                child: const Text(
                  "Start",
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              )
            ],
          ),
        ),
      );
    } else if (questionScreen == 1) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "QuizApp",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Question : ",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "${questionIndex + 1}/${allQuestions.length}",
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 350,
              height: 80,
              child: Text(
                allQuestions[questionIndex].question,
                style: const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: checkAnswer(0),
                  fixedSize: const MaterialStatePropertyAll(Size(350, 60)),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)))),
              onPressed: () {
                if (selectedIndex == -1) {
                  setState(() {
                    selectedIndex = 0;
                  });
                }
              },
              child: Text(
                "A.${allQuestions[questionIndex].options[0]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: checkAnswer(1),
                fixedSize: const MaterialStatePropertyAll(Size(350, 60)),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              onPressed: () {
                if (selectedIndex == -1) {
                  setState(() {
                    selectedIndex = 1;
                  });
                }
              },
              child: Text(
                "B.${allQuestions[questionIndex].options[1]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: checkAnswer(2),
                fixedSize: const MaterialStatePropertyAll(Size(350, 60)),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              onPressed: () {
                if (selectedIndex == -1) {
                  setState(() {
                    selectedIndex = 2;
                  });
                }
              },
              child: Text(
                "C.${allQuestions[questionIndex].options[2]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: checkAnswer(3),
                fixedSize: const MaterialStatePropertyAll(Size(350, 60)),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              onPressed: () {
                if (selectedIndex == -1) {
                  setState(() {
                    selectedIndex = 3;
                  });
                }
              },
              child: Text(
                "D.${allQuestions[questionIndex].options[3]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              validatePage();
            });
          },
          backgroundColor: Colors.purple,
          child: const Icon(
            Icons.forward,
            color: Colors.white,
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "QuizApp",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),
        body: Center(
            child: Column(
          children: [
            Image.network(
              "https://thumbs.dreamstime.com/b/cartoon-winners-trophy-champion-cup-falling-confetti-isolated-white-d-rendering-clipping-path-233301753.jpg",
              height: 450,
              width: 380,
            ),
            const Text(
              "CONGRATULATIONS!!!",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic),
            ),
            Text(
              "Score:$noOfCorrectQuestion/${allQuestions.length}",
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ButtonStyle(
                  side: const MaterialStatePropertyAll(
                      BorderSide(color: Colors.purple)),
                  backgroundColor: const MaterialStatePropertyAll(Colors.white),
                  fixedSize: const MaterialStatePropertyAll(Size(150, 50)),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    questionScreen = 0;
                    selectedIndex = -1;
                    questionIndex = 0;
                    noOfCorrectQuestion = 0;
                  });
                },
                child: const Text(
                  "Reset",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      color: Colors.purple),
                ))
          ],
        )),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }
}
