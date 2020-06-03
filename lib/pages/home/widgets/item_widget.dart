import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:todo_list/models/task_model.dart';

/// by @lucas-marciano on 03/06/2020
class ItemWidget extends StatelessWidget {
  final TaskModel task;
  final Function callbackRemove;

  const ItemWidget({Key key, this.task, this.callbackRemove}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => ListTile(
        title: Text(task.title),
        subtitle: Text(task.describe),
        leading: Checkbox(
          value: task.check,
          onChanged: task.setCheck,
        ),
        trailing: IconButton(
          color: Colors.red,
          onPressed: callbackRemove,
          icon: Icon(Icons.remove_circle_outline),
        ),
      ),
    );
  }
}
