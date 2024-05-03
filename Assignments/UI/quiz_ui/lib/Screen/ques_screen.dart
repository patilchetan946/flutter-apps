import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import "package:percent_indicator/percent_indicator.dart";

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Math Quiz",
          style: GoogleFonts.dmSans(
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: const Color.fromRGBO(131, 76, 52, 1),
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LinearPercentIndicator(
              alignment: MainAxisAlignment.start,
              progressColor: const Color.fromRGBO(42, 135, 63, 1),
              percent: 0.7,
              width: screenWidth * 0.85,
              backgroundColor: const Color.fromRGBO(245, 216, 186, 1),
              barRadius: const Radius.circular(6),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.all(15),
              height: screenHeight * 0.13,
              width: screenWidth * 0.75,
              child: Text(
                "If David’s age is 27 years old in 2011. What was his age in 2003?",
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.w700,
                  fontSize: 26,
                  color: const Color.fromRGBO(131, 76, 52, 1),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin:
                  const EdgeInsets.only(top: 0, bottom: 5, left: 5, right: 5),
              height: screenHeight * 0.09,
              width: screenWidth * 0.81,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(26, 181, 134, 1),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Row(
                  children: [
                    Text(
                      "19 years",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.all(5),
              height: screenHeight * 0.09,
              width: screenWidth * 0.81,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(248, 145, 87, 1),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Row(
                  children: [
                    Text(
                      "19 years",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.all(5),
              height: screenHeight * 0.09,
              width: screenWidth * 0.81,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(248, 145, 87, 1),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Row(
                  children: [
                    Text(
                      "19 years",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.all(5),
              height: screenHeight * 0.09,
              width: screenWidth * 0.81,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(248, 145, 87, 1),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Row(
                  children: [
                    Text(
                      "19 years",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Explanation",
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: const Color.fromRGBO(131, 76, 52, 1),
              ),
            ),
            const SizedBox(height: 4),
            SizedBox(
              width: screenWidth * 0.7,
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing",
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: const Color.fromRGBO(131, 76, 52, 0.8),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Container(
        height: 33,
        width: 90,
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 8,
              offset: Offset(0, 0),
              color: Color.fromRGBO(0, 0, 0, 0.15),
            )
          ],
        ),
        child: FloatingActionButton.extended(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: const Color.fromRGBO(26, 181, 134, 1),
          onPressed: () {},
          label: Row(
            children: [
              Text(
                "NEXT",
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  color: const Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
              const SizedBox(width: 3),
              const Icon(
                Icons.arrow_circle_right,
                size: 20,
                color: Color.fromRGBO(255, 255, 255, 1),
              )
            ],
          ),
        ),
      ),
    );
  }
}
