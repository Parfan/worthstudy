import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:worthstudy/models/task_model.dart';

import '../models/user_model.dart';

class AppViewModel extends ChangeNotifier {
  List<TaskM> tasks = <TaskM>[];

  User user = User(username: 'alexandre' );

  Color label1 = Colors.lightGreen.shade200;
  Color label2 = Colors.grey.shade200;
  Color label4 = Colors.grey.shade50;
  Color label3 = Colors.black;

  void bottomSheetBuilder(Widget bottomSheetView, BuildContext context) {
    showModalBottomSheet(
      
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      context: context,
      builder: (BuildContext context) {
        return bottomSheetView;
      },
    );
  }

  
  void updateUser(String username) {
    user.username = username;
    notifyListeners();
  }

  int get numTasks => tasks.length;

  bool getTaskValue(int taskIndex) {
    return tasks[taskIndex].complete;
  }

  String getTaskTitle (int taskIndex) {
    return tasks[taskIndex].title;
  }

  void removeTask(int taskIndex) {
    tasks.removeAt(taskIndex);
    notifyListeners();
  }


  void setTaksValue(int taskIndex, bool taskValue) {
    tasks[taskIndex].complete = taskValue;
    notifyListeners();
  }

  void deleteAllTasks(){
    tasks.clear();
    notifyListeners();
  }


  void deleteCompletedTasks(){
    tasks.removeWhere((task) => !task.complete);
    notifyListeners();
  }
  

  String get username => user.username;
  int get numCompletedTasks => tasks.where((task) => !task.complete).length;

  void addTask(TaskM task) {
    tasks.add(task);
    notifyListeners();
  }
}