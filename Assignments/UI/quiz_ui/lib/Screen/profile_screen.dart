import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_ui/Screen/ques_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 120, left: 30, right: 30),
            child: SizedBox(
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi Pamela,",
                        style: GoogleFonts.dmSans(
                            color: const Color.fromRGBO(131, 76, 52, 1),
                            fontWeight: FontWeight.w700,
                            fontSize: 25),
                      ),
                      Text(
                        "Great to see you again!",
                        style: GoogleFonts.dmSans(
                            color: const Color.fromRGBO(131, 76, 52, 1),
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    height: 64,
                    width: 64,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(250, 188, 154, 1)),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 180, left: 30, right: 30),
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (BuildContext context, index) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  height: 80,
                  width: 306,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromRGBO(255, 237, 217, 1)),
                  child: Row(
                    children: [
                      const SizedBox(width: 25),
                      Container(
                        height: 45,
                        width: 45,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text("M",
                            style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: const Color.fromRGBO(200, 60, 0, 1))),
                      ),
                      const SizedBox(width: 15),
                      Text(
                        "Math",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: const Color.fromRGBO(131, 76, 52, 1),
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const QuestionScreen();
                          }));
                        },
                        icon: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 22,
                          color: Color.fromRGBO(52, 10, 0, 1),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
