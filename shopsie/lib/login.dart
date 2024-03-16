import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopsie/bottomnavigationbar.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State createState() => _LoginState();
}

class User {
  final String? userid;
  final String? password;
  const User({this.userid, this.password});
}

class _LoginState extends State {
//CONTROLLERS
  TextEditingController userTextEditingController = TextEditingController();
  TextEditingController passTextEditingController = TextEditingController();

  int count = 0;
  bool passVisible = false;
  bool _loggedin = false;
  bool? remember = false;

  showNextPage() {
    if (_loggedin) {
      // It replaces the current route of the navigator that most tightly encloses the given context by pushing the given route
      // It will remove all past routes. can't go back.
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) {
          return const BtmNavgtnBar();
        }),
      );
    }
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  List userdata = [
    const User(userid: "patilchetan", password: "patilchetan123")
  ];

  loginScreen() {
    if (count == 0) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            children: [
              const Spacer(),
              Text(
                "SHOPSIE",
                style: GoogleFonts.mulish(
                    fontSize: 38,
                    color: const Color.fromARGB(255, 254, 119, 65),
                    fontWeight: FontWeight.w800),
              ),
              const SizedBox(height: 10),
              Text(
                "Welcome to Shopsie. Let's shop !",
                style: GoogleFonts.mulish(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const Spacer(flex: 2),
              Image.asset(
                "assets/splash_1.png",
                height: 265,
                width: 235,
              ),
              const Spacer(
                flex: 3,
              ),
              Container(
                height: 50,
                width: 300,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 112, 56),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      count++;
                    });
                  },
                  child: const Text(
                    "Get Started",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      );
    } else if (count == 1) {
      return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            toolbarHeight: 120,
            elevation: 0,
            backgroundColor: Colors.white,
            centerTitle: true,
            title: const Text(
              "Sign In",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
            ),
            leading: IconButton(
                onPressed: () {
                  setState(() {
                    count--;
                  });
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                )),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    const Text(
                      "Welcome Back",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Sign in with your email and password  \nor continue with social media",
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 80),
                    TextFormField(
                      controller: userTextEditingController,
                      decoration: InputDecoration(
                        hintText: "Enter username",
                        label: const Text("Enter username"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40)),
                        prefixIcon: const Icon(
                          Icons.person,
                        ),
                      ),
                      validator: (value) {
                        print("IN USERNAME VALIDATOR");
                        if (value == null || value.isEmpty) {
                          return "Please enter username";
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 30),
                    TextFormField(
                      controller: passTextEditingController,
                      obscureText: passVisible ? false : true,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                        hintText: "Enter password",
                        label: const Text("Enter password"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40)),
                        prefixIcon: const Icon(
                          Icons.lock,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              passVisible = !passVisible;
                            });
                          },
                          icon: Icon(
                            passVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: const Color.fromARGB(255, 255, 112, 56),
                          ),
                        ),
                      ),
                      validator: (value) {
                        print("IN PASSWORD VALIDATOR");
                        if (value == null || value.isEmpty) {
                          return "Please enter password";
                        } else {
                          return null;
                        }
                      },
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Checkbox(
                          value: remember,
                          activeColor: Colors.green,
                          onChanged: (value) {
                            setState(() {
                              remember = value;
                            });
                          },
                        ),
                        const Text("Remember me"),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            "Forgot Password",
                            style:
                                TextStyle(decoration: TextDecoration.underline),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 30),
                    SizedBox(
                      height: 60,
                      width: 380,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: const MaterialStatePropertyAll(
                                Color.fromARGB(255, 255, 112, 56)),
                            shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            )),
                        onPressed: () {
                          bool loginValidated =
                              _formKey.currentState!.validate();
                          if (loginValidated) {
                            if (userTextEditingController.text ==
                                    userdata[0].userid &&
                                passTextEditingController.text ==
                                    userdata[0].password) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("Login Successful"),
                                  backgroundColor: Colors.green,
                                ),
                              );
                              _loggedin = true;
                              showNextPage();
                              setState(() {});
                            } else {
                              _loggedin = false;
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("login Failed"),
                                  backgroundColor: Colors.red,
                                ),
                              );
                            }
                          }
                        },
                        child: Text(
                          "Login",
                          style: GoogleFonts.quicksand(
                              fontWeight: FontWeight.w700, fontSize: 25),
                        ),
                      ),
                    ),
                    const SizedBox(height: 60),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            padding: const EdgeInsets.all(12),
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(245, 246, 249, 1),
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              "assets/Logo-google-icon-PNG.png",
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            padding: const EdgeInsets.all(8),
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(245, 246, 249, 1),
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              "assets/fb.png",
                              height: 40,
                              width: 40,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            padding: const EdgeInsets.all(4),
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 245, 246, 249),
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              "assets/twitter_x_.png",
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have an account? ",
                          style: TextStyle(fontSize: 16),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 255, 112, 56)),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ));
    } else {
      return const Scaffold();
    }
  }

  @override
  Widget build(BuildContext context) {
    return loginScreen();
  }
}
