import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      body:SingleChildScrollView(
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
               "Home ",
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