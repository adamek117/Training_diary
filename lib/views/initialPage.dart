import 'package:flutter/material.dart';
import 'package:trainining_diary/views/homePage.dart';
import 'package:trainining_diary/views/profilePage.dart';
import 'package:trainining_diary/views/trainingPage.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  List pages = [];
  @override
  void initState() {
    super.initState();
    setState(() {
      pages = [const HomePage(), const TrainingPage(), const ProfilePage()];
    });
  }

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.isNotEmpty ? pages[_currentIndex] : null,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu_book), label: "Trainings"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Color.fromARGB(249, 252, 97, 80),
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
