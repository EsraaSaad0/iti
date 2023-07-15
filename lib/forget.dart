import 'package:flutter/material.dart';

class ForgetPasswoed extends StatefulWidget {
  const ForgetPasswoed({super.key});

  @override
  State<ForgetPasswoed> createState() => _ForgetPasswoedState();
}

class _ForgetPasswoedState extends State<ForgetPasswoed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 14, 137, 237),
        leading: IconButton(
          icon: const Icon(Icons.exit_to_app),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              Container(
                width: 600,
                height: 350,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/nest.gif"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                " Find Your accound",
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                " Enter your mobile number or email address.",
                style: TextStyle(fontSize: 17, color: Colors.black),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(3, 0, 3, 0),
                child: TextFormField(
                  decoration: InputDecoration(
                    label: Text("Mobile number or email",
                        style: TextStyle(fontSize: 20)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 20, 121, 204),
                  elevation: 1,
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  minimumSize: const Size(300, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text(
                  "Find account",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
