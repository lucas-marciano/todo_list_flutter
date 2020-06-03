import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/controllers/home_controller.dart';
import 'package:todo_list/models/task_model.dart';

/// by @lucas-marciano on 03/06/2020
class DialogWidget extends StatelessWidget {
  final _task = TaskModel();

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<HomeController>(context);

    return AlertDialog(
      title: Text("Insert new task"),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              onChanged: _task.setTitle,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Title",
              ),
            ),
            SizedBox(height: 16),
            TextField(
              maxLines: 4,
              onChanged: _task.setDescribe,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Description",
              ),
            ),
          ],
        ),
      ),
      actions: [
        FlatButton(
          onPressed: () {
            controller.add(_task);
            Navigator.pop(context);
          },
          child: Text("Save"),
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
