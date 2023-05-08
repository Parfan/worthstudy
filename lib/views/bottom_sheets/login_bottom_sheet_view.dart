import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:worthstudy/view_models/app_view_model.dart';

import '../../models/task_model.dart';

class SettingTaskBottomSheetView extends StatelessWidget {
  const SettingTaskBottomSheetView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController entryController = TextEditingController();
    return Consumer<AppViewModel>(
      builder: (context, viewModel, child) {
        return Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Container(
              height: 80,
              child: Center(
                child: SizedBox(
                  height: 40,
                  width: 250,
                  child: TextField(
                    onSubmitted: (value){
                      if(entryController.text.isNotEmpty){
                       viewModel.updateUser(1, entryController.text);
                      }
                      Navigator.of(context).pop();
                    }, 
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 5),
                        filled: true,
                        fillColor: Colors.grey.shade200,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(width: 0, style: BorderStyle.none))),
                    textAlign: TextAlign.center,
                    textAlignVertical: TextAlignVertical.center,
                    cursorColor: Colors.black,
                    autocorrect: false,
                    autofocus: true,
                    controller: entryController,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
              )),
        );
      },
    );
  }
}
