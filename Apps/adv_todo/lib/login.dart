import "package:adv_todo/Todoui.dart";
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class User {
  final String? userid;
  final String? password;
  const User({this.userid, this.password});
}

class _LoginPageState extends State<LoginPage> {
  //CONTROLLERS
  TextEditingController userNameTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  List userdata = [const User(userid: "patil", password: "patil123")];

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool passVisible = false;
  bool _loggedin = false;

  void showNextPage() {
    if (_loggedin) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const TODOAppUI(),
          ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(89, 57, 241, 1),
        centerTitle: true,
        title: Text(
          "To-Do List",
          style: GoogleFonts.quicksand(
              fontWeight: FontWeight.w700,
              fontSize: 26,
              color: const Color.fromRGBO(255, 255, 255, 1)),
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(height: 10),
                Image.network(
                  "https://oriongl.com/wp-content/uploads/2020/07/task-list-featured-image.png",
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: userNameTextEditingController,
                  //key:userNameKey,
                  decoration: InputDecoration(
                    hintText: "Enter username",
                    label: const Text("Enter username"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
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
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: passwordTextEditingController,
                  //key: passwordKey,
                  obscureText: passVisible ? false : true,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    hintText: "Enter username",
                    label: const Text("Enter username"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
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
                        passVisible ? Icons.visibility : Icons.visibility_off,
                        color: const Color.fromRGBO(89, 57, 241, 1),
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
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  width: 400,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: const MaterialStatePropertyAll(
                          Color.fromRGBO(89, 57, 241, 1),
                        ),
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                        )),
                    onPressed: () {
                      bool loginValidated = _formKey.currentState!.validate();
                      if (loginValidated) {
                        if (userNameTextEditingController.text ==
                                userdata[0].userid &&
                            passwordTextEditingController.text ==
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
