import 'package:flutter/material.dart';
import 'package:worthstudy/navigationbar.dart';
import 'package:worthstudy/presenter/pages/pomodoro_page.dart';
import 'package:worthstudy/views/header_task_view.dart';
import 'package:worthstudy/views/task_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 18, left: 24, right: 24),
          child: Column(children: [ 
            Expanded(flex: 1, child: HeaderView(), ),
            Expanded( flex:7,
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                const SizedBox(height: 32),
                Center(child: Image.asset('assets/logo.png', scale: 1.0
                ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _cardMenu(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Tasks()),
                          );
                        },
                        
                        title: 'TASKS',
                        icon: 'assets/calendar.png',
                    ),
                  _cardMenu(
                     onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PomodoroPage()),
                          );
                        },
                        title: 'POMODORO',
                        icon: 'assets/wall-clock.png',
                    ),
                ],
                )
            ],
            ),)

          ]
            
          ),
            
          
          ),
        ),
      );
    
  }

  Widget _cardMenu({
    required String title,
    required String icon,
    VoidCallback? onTap,
    Color color = Colors.white,
    Color fontColor = Colors.black,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 36),
        width: 156,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          border: color == Colors.white
              ? Border.all(color: Color.fromARGB(255, 0, 0, 0))
              : null,
          color: color,
        ),
        child: Column( 
          children: [
            Image.asset(icon, scale: 9.0),
            const SizedBox(height: 10 ),
            Text(
              title, 
              style: 
                TextStyle(fontSize: 18, 
                color: fontColor,
                fontWeight: FontWeight.bold
              ),
              ),
            
            //tamano de la imagen
          ],
        ) ,
      ),
    );
  }
}
