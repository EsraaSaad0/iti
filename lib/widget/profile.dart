import 'package:flutter/material.dart';
import 'package:libararyy/widget/utils.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    super.initState();
    getUserEmail();
  }

  String userEmail = "";
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
                userEmail,
                style: const TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0), fontSize: 30),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  getUserEmail() async {
    userEmail = await getEmail();
    setState(() {});
  }
}
