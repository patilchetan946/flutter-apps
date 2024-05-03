import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_ui/Screen/profile_screen.dart';

class StartingScreen extends StatelessWidget {
  const StartingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfileScreen()));
              },
              child: Image.asset("assets/Starting_img.png")),
          Positioned(
            top: 410,
            left: 90,
            child: Image.asset("assets/Logo.png"),
          )
        ],
      ),
    );
  }
}
