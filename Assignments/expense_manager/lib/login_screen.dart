import 'package:expense_manager/transaction_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State createState() => _LoginState();
}

class _LoginState extends State {
  TextEditingController user = TextEditingController();
  TextEditingController pass = TextEditingController();

  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100, bottom: 20, left: 160),
              child: Image.asset(
                "assets/money.png",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40),
              child: Column(
                children: [
                  Form(
                    key: _key,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Login to your Account",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: const Color.fromRGBO(0, 0, 0, 1))),
                        const SizedBox(height: 25),
                        Container(
                          height: 49,
                          decoration: const BoxDecoration(boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 3),
                                spreadRadius: 0,
                                blurRadius: 10,
                                color: Color.fromRGBO(0, 0, 0, 0.15))
                          ]),
                          child: TextFormField(
                            controller: user,
                            decoration: InputDecoration(
                              fillColor: const Color.fromRGBO(255, 255, 255, 1),
                              filled: true,
                              label: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Username",
                                    style: GoogleFonts.poppins(
                                        color:
                                            const Color.fromRGBO(0, 0, 0, 0.4),
                                        fontSize: 12)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Enter Username";
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          height: 49,
                          decoration: const BoxDecoration(boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 3),
                                spreadRadius: 0,
                                blurRadius: 10,
                                color: Color.fromRGBO(0, 0, 0, 0.15))
                          ]),
                          child: TextFormField(
                            controller: user,
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                fillColor:
                                    const Color.fromRGBO(255, 255, 255, 1),
                                filled: true,
                                label: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Password",
                                      style: GoogleFonts.poppins(
                                          color: const Color.fromRGBO(
                                              0, 0, 0, 0.4),
                                          fontSize: 12)),
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Enter Password";
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),
                        const SizedBox(height: 30),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              setState(() {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const TransactionScreen();
                                }));
                              });
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 55,
                            width: 350,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromRGBO(14, 161, 125, 1),
                            ),
                            child: Text(
                              "Sign Up",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(255, 255, 255, 1),
                                  fontSize: 15),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 300,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an account? ",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Text(
                                "Sign Up",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: const Color.fromRGBO(14, 161, 125, 1),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
