import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //CONTROLLERS
  TextEditingController userNameTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

/*  
KEYS - to Uniquely identify widget is true

  - same widgets in same tree and at the same level CANNOT have same key 
  - Key accepts String
  - When we use Key of FFORMSTATE we require ONLY ONE global key.
  - Global Key helps use to create instance of another class and we can make use of any method from that class
  - here we are using VALIDATE() method from FormState
  - formStates validate () method internally calls to FormFieldState's validate() and uses for loop.AboutDialog
  - function in validator of TextFormField is called by Flutter engine according to key
*/

  //KEYS
  //GlobalKey<FormFieldState> userNameKey = GlobalKey<FormFieldState>();
  //GlobalKey<FormFieldState> passwordKey = GlobalKey<FormFieldState>();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Login Page"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.network(
                "https://e7.pngegg.com/pngimages/799/987/png-clipart-computer-icons-avatar-icon-design-avatar-heroes-computer-wallpaper-thumbnail.png",
                height: 90,
                width: 90,
              ),
              const SizedBox(
                height: 20,
              ),
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
                obscureText: true,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                  hintText: "Enter username",
                  label: const Text("Enter username"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  prefixIcon: const Icon(
                    Icons.lock,
                  ),
                  suffixIcon: const Icon(
                    Icons.remove_red_eye_outlined,
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
              ElevatedButton(
                onPressed: () {
                  bool loginValidated = _formKey.currentState!.validate();
                  if (loginValidated) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Login Successful")));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("login Failed"),
                      ),
                    );
                  }

                  // bool userNameValidated = userNameKey.currentState!.validate();
                  // bool passwordValidated = passwordKey!.currentState.validate();

                  // if(userNameValidated &&passwordValidated){
                  //   ScaffoldMessenger.of(context).showSnackBar(
                  //     const snackBar(
                  //       context:Text("Login Failed"),
                  //     ),);
                  // }else{
                  //   ScaffoldMessenger.of(context).showSnackBar(
                  //     const SnackBar(
                  //       content: Text("login Failed"),
                  //     ),
                  //   );
                  // }
                },
                child: const Text("Login"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
