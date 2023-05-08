import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:worthstudy/view_models/app_view_model.dart';


class DeleteBottomSheetView extends StatelessWidget {
  const DeleteBottomSheetView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, viewModel, child) {
      return Container(
        height: 125,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () {
                  //viewModel.deleteAllTasks();
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.grey.shade600,
                    backgroundColor: Colors.lightGreen.shade200,
                    textStyle:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: Text("deletar todas")),
            SizedBox(
              width: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  //viewModel.deleteCompletedTasks();
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.grey.shade600,
                    backgroundColor: Colors.lightGreen.shade200,
                    textStyle:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: Text("deletar completas")),
          ], 
        ),
      );
    });
  }
}
