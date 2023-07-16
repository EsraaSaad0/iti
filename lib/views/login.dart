import 'package:flutter/material.dart';
import 'package:libararyy/views/widget/forget.dart';
import 'package:libararyy/views/home-screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required String email});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final TextEditingController emailController = TextEditingController();

    return Scaffold(
      /*appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 140, 73, 73),
        title: const Text("Welcome", style: TextStyle(fontSize: 30)),
        centerTitle: true,
      ),*/
      body: SingleChildScrollView(
        child: Container(
          width: 500,
          height: 850,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/85.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  " LogIn",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  " Please enter your email and password!",
                  style: TextStyle(fontSize: 17),
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(3, 0, 3, 0),
                  child: TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      errorStyle: const TextStyle(fontSize: 14.0),
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.email),
                        onPressed: () {
                          // Handle password visibility toggle
                        },
                      ),
                      label: const Text("Email",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          )),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 175, 57, 48)),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    validator: (value) {
                      if (value!.contains("@")) {
                        return null;
                      } else {
                        return "Not valid email";
                      }
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(3, 0, 3, 0),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      label: const Text("password",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          )),
                      errorStyle: const TextStyle(fontSize: 14.0),
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.password),
                        onPressed: () {
                          // Handle password visibility toggle
                        },
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 175, 57, 48)),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    validator: (value) {
                      if (value!.length > 6) {
                        return null;
                      } else {
                        return "password should be contain more than 9";
                      }
                    },
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      saveEmail(emailController.text);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomeScreen(
                                  email: emailController.text,
                                )),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 29, 31, 32),
                    elevation: 1,
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    minimumSize: const Size(300, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    "Log in",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ForgetPasswoed()),
                    );
                  },
                  child: const Text(
                    "Forgot password?",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 120,
                ),
                TextButton(
                  onPressed: () {
                    // Handle forgot password button press
                  },
                  child: const Text(
                    " Don't have an account? Sign Up",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  saveEmail(String email) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("email", email);
  }
}
