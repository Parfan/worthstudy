import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:worthstudy/view_models/app_view_model.dart';

class TaskListView extends StatelessWidget {
  const TaskListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(builder: (context, viewModel, child) {
      return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
        child: ListView.separated(
          padding: EdgeInsets.all(15),
          separatorBuilder: (context, index) {
          return SizedBox(height: 15,);
        }, 
        itemCount: viewModel.numTasks,
        itemBuilder: (context, index) {
          return Dismissible(
            key: UniqueKey(),
           onDismissed: (direction) {
              viewModel.removeTask(index);
            },
            background: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.red.shade200,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
               
                
                  child:
                  Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
              
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.lightGreen.shade100,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListTile(
                leading: Checkbox(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                      side: BorderSide(width: 2, color: Colors.black),
                      checkColor: Colors.grey.shade200,
                      activeColor: Colors.black,
                      value: viewModel.getTaskValue(index),
                      onChanged: (value) {
                        viewModel.setTaksValue(index, value!);
                      },
                ),
                title: Text(
                  viewModel.getTaskTitle(index),
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    decoration: viewModel.getTaskValue(index)
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
                  ),
                ),
              ),
            ),
          );
        },
        ),
       
      );
    
    });
  }
}
