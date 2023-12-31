import 'package:flutter/material.dart';
import 'package:libararyy/views/widget/profile.dart';
import 'package:libararyy/views/widget/setting-screen.dart';

import 'widget/main-screen.dart';

class HomeScreen extends StatefulWidget {
  final String email;
  HomeScreen({super.key, required this.email});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  

  int _currentIndex = 0;
  List<Widget> page = [
    MainScreen(),
    ProfileScreen(),
    SettingScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(248, 43, 35, 35),
        currentIndex: _currentIndex,
        onTap: ((index) {
          setState(() {
            _currentIndex = index;
          });
        }),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Person"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
        ],
      ),
      body: page.elementAt(_currentIndex),
    );
  }

  
}
