import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:worthstudy/view_models/app_view_model.dart';
import 'package:worthstudy/views/bottom_sheets/delete_bottom_sheet_view.dart';
import 'package:worthstudy/views/bottom_sheets/login_bottom_sheet_view.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(
      builder: (context, viewModel, child) {
        return Row(
          children: [
            Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.only(left: 15, top: 10, bottom: 10),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: FittedBox(
                            fit: BoxFit.fitHeight,
                            child: Text("WELCOME,",
                                style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black)),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: FittedBox(
                            fit: BoxFit.fitHeight,
                            child: Text(viewModel.username,
                                style: TextStyle(
                                    fontSize: 34,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            
            Expanded(
                flex: 1,
                child: InkWell(
                  onTap: (){
                    viewModel.bottomSheetBuilder(SettingTaskBottomSheetView(), context);
                  },
                  child: Icon(
                    Icons.settings,
                    color: Colors.lightGreen.shade200,
                    size: 27,
                  ),
                ))
          ],
        );
      },
    );
  }
}
