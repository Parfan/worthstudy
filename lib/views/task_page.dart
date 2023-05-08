import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:worthstudy/home.dart';
import 'package:worthstudy/navigationbar.dart';

import 'package:worthstudy/presenter/pages/pomodoro_page.dart';
import 'package:worthstudy/views/add_task_view.dart';
import 'package:worthstudy/views/header_task_view.dart';
import 'package:worthstudy/views/info_app_view.dart';
import 'package:worthstudy/views/task_info_view.dart';
import 'package:worthstudy/views/task_list_view.dart';

class Tasks extends StatefulWidget {
  const Tasks({Key? key}) : super(key: key);

  @override
  _TasksState createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        items: [
          const Icon(Icons.home, size: 30),
          const Icon(Icons.timer, size: 30),
          const Icon(Icons.info_outline, size: 30),
        ],
        
        
        onTap: (index) {
          //quando clicar em um dos itens do bottomNavigationBar, ele vai para a página correspondente
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyHomePage()),
            );
          } 
          else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PomodoroPage()),
            );
          }
          else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const InfoApp()),
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
      body: SafeArea (
        child: Column(
        children: [
          Expanded(flex: 1, child: HeaderView(), ),
          Expanded(flex: 1, child: TaskView() ),
          Expanded(flex: 7, child: TaskListView(), ),
        ],
      ),
    ),
    floatingActionButton: const AddTaksView(),
    );
  }
}
