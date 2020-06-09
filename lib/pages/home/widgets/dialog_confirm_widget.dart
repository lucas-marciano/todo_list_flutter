import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/controllers/home_controller.dart';
import 'package:todo_list/shared/models/task_model.dart';

/// by @lucas-marciano on 03/06/2020
class DialogConfirmWidget extends StatelessWidget {
  final TaskModel task;

  const DialogConfirmWidget({Key key, this.task}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<HomeController>(context);

    return AlertDialog(
      title: Text("You want to continue?"),
      content: Text("The task dont will be recovered"),
      actions: [
        FlatButton(
          onPressed: () {
            controller.remove(task);
            Navigator.pop(context);
          },
          child: Text("Remove"),
        ),
        FlatButton(
          onPressed: () => Navigator.pop(context),
          child: Text(
            "Cancel",
            style: TextStyle(
              color: Colors.red,
            ),
          ),
        ),
      ],
    );
  }
}
