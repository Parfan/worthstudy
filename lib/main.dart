import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:worthstudy/home.dart';
import 'package:worthstudy/presenter/store/pomodoro_store.dart';
import 'package:worthstudy/view_models/app_view_model.dart';


void main() {
  runApp(
    ChangeNotifierProvider( create: (context) => AppViewModel(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     return MultiProvider(
      providers: [
        Provider<PomodoroStore>(
          create: (_) => PomodoroStore(),
        )
      ],
      child: MaterialApp(
      title: 'WORTHSTUDY',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    ),
      ); 
  }
}