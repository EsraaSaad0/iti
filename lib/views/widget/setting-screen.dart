import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: 500,
          height: 850,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/book.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Form(
            child: Column(children: [
              SizedBox(
                height: 50,
              ),
              Text(
                "Settings",
                style: const TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0), fontSize: 30),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
