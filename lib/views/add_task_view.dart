import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:worthstudy/view_models/app_view_model.dart';

import 'bottom_sheets/add_task_bottom_sheet_view.dart';

class AddTaksView extends StatelessWidget {
  const AddTaksView({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(
      builder: (context, viewModel, child) {
        return SizedBox(
          height: 60,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                
                backgroundColor: Colors.lightGreen.shade200,
                foregroundColor: Colors.black,
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(15),
              ),
              onPressed: () {
                HapticFeedback.heavyImpact();
                viewModel.bottomSheetBuilder(
                    const AddTaskBottomSheetView(), context);
              },
              child: Icon(
                
                Icons.add,
                size: 20,
               
              )),
        );
      },
    );
  }
}
