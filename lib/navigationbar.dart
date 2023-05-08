import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:worthstudy/home.dart';
import 'package:worthstudy/presenter/pages/pomodoro_page.dart';
import 'package:worthstudy/views/task_page.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int currentpage = 0;

 @override
  Widget build(BuildContext context) {
    return Scaffold(
    bottomNavigationBar: CurvedNavigationBar(
        items: [
          const Icon(Icons.home, size: 30),
          const Icon(Icons.list, size: 30),
          const Icon(Icons.timer, size: 30),
        ],
        
        
        onTap: (index) {
          //quando clicar em um dos itens do bottomNavigationBar, ele vai para a página correspondente
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyHomePage()),
            );
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Tasks()),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PomodoroPage()),
            );
          }
        },
        color: Colors.lightGreen.shade200,
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.white,
        height: 50,
        animationDuration: const Duration(milliseconds: 200),
        animationCurve: Curves.bounceInOut,
        index: 0,
      ),
      
    );
  }
}