import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/controllers/home_controller.dart';
import 'package:todo_list/pages/home/widgets/empty_list_widget.dart';
import 'package:todo_list/pages/home/widgets/item_widget.dart';

class ListWidget extends StatelessWidget {
  final GlobalKey<AnimatedListState> listKey;

  const ListWidget({Key key, this.listKey}) : super(key: key);

  AnimatedListState get _animatedList => listKey.currentState;

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<HomeController>(context);

    return Observer(
      builder: (_) {
        if (controller.listTasks.isEmpty) {
          return EmptyListWidget();
        } else {
          return AnimatedList(
            key: listKey,
            initialItemCount: controller.filteredList.length,
            itemBuilder: (context, index, animation) {
              var task = controller.filteredList[index];
              return ItemWidget(
                task: task,
                animation: animation,
                animatedList: _animatedList,
              );
            },
          );
        }
      },
    );
  }
}

// ListView.builder(
//             itemCount: controller.filteredList.length,
//             itemBuilder: (_, index) {
//               var task = controller.filteredList[index];
//               return ItemWidget(
//                 task: task,
//               );
//             },
//           );
