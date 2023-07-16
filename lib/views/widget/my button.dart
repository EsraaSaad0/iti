import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  final String label;
  const MyButton({super.key,required this.label});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
       padding: EdgeInsets.only(left: 120, right: 120),

      child: Container(
        
        decoration: BoxDecoration(
          color: const Color.fromARGB(115, 179, 145, 145),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(child: Text("Click")),
      ),
    );
  }
}
