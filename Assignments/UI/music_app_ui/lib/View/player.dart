import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app_ui/Controller/navigationbar.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Player extends StatefulWidget {
  const Player({super.key});

  @override
  State createState() => PlayerState();
}

class PlayerState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                "assets/plyrImg.png",
                fit: BoxFit.cover,
                height: 550,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 480, left: 70, right: 70),
                child: Column(
                  children: [
                    Text(
                      "Alone in the Abyss",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                          color: const Color.fromRGBO(230, 154, 21, 1)),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Youlakou",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                          color: const Color.fromRGBO(255, 255, 255, 1)),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 300),
                      child: Icon(
                        Icons.ios_share,
                        color: Color.fromRGBO(230, 154, 21, 1),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Text(
                  "Dynamic Warmup",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: const Color.fromRGBO(255, 255, 255, 1)),
                ),
                const Spacer(),
                Text(
                  "4 min",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: const Color.fromRGBO(255, 255, 255, 1)),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: LinearPercentIndicator(
              width: 400.0,
              lineHeight: 6.0,
              percent: 0.2,
              backgroundColor: Colors.grey,
              barRadius: const Radius.circular(20),
              progressColor: const Color.fromRGBO(230, 154, 21, 1),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(
                Icons.loop,
                color: Colors.white,
                size: 26,
              ),
              Transform.rotate(
                angle: 180 * pi / 180,
                child: const Icon(
                    size: 35, color: Colors.white, Icons.skip_next_rounded),
              ),
              const Icon(
                Icons.play_circle_fill,
                color: Colors.white,
                size: 70,
              ),
              const Icon(
                Icons.skip_next_rounded,
                color: Colors.white,
                size: 35,
              ),
              const Icon(
                Icons.volume_down_alt,
                color: Colors.white,
                size: 30,
              )
            ],
          )
        ],
      ),
      // bottomNavigationBar: const BtmNavgtnBar(),
    );
  }
}
