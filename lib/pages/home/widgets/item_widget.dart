import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:todo_list/shared/models/task_model.dart';
import 'package:todo_list/pages/home/widgets/dialog_confirm_widget.dart';

/// by @lucas-marciano on 03/06/2020
class ItemWidget extends StatelessWidget {
  final TaskModel task;
  final Animation<double> animation;
  final AnimatedListState animatedList;

  const ItemWidget({Key key, this.task, this.animation, this.animatedList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    _buildDialog() {
      showDialog(
        context: context,
        builder: (_) => DialogConfirmWidget(
          task: task,
        ),
      );
    }

    return Observer(
      builder: (_) => SizeTransition(
        axis: Axis.vertical,
        sizeFactor: animation,
        child: ListTile(
          title: Text(task.title),
          subtitle: Text(task.describe),
          leading: Checkbox(
            value: task.check,
            onChanged: task.setCheck,
          ),
          trailing: IconButton(
            color: Colors.red,
            onPressed: _buildDialog,
            icon: Icon(Icons.remove_circle_outline),
          ),
        ),
      ),
    );
  }
}
