import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/controllers/home_controller.dart';
import 'package:todo_list/pages/home/widgets/dialog_widget.dart';
import 'package:todo_list/pages/home/widgets/empty_list_widget.dart';
import 'package:todo_list/pages/home/widgets/item_widget.dart';

/// by @lucas-marciano on 03/06/2020
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<HomeController>(context);

    _buildDialog() {
      showDialog(
        context: context,
        builder: (_) => DialogWidget(),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: TextField(
          cursorColor: Colors.white,
          style: TextStyle(color: Colors.white),
          onChanged: (value) {
            if (value.isNotEmpty) controller.setFilter(value);
          },
          decoration: InputDecoration(
            hintText: "Search ...",
            hintStyle: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Observer(
              builder: (_) => Text("${controller.totalChecked}"),
            ),
            onPressed: null,
          ),
        ],
      ),
      body: Observer(
        builder: (_) {
          if (controller.listTasks.isEmpty) {
            return EmptyListWidget();
          } else {
            return ListView.builder(
              itemCount: controller.filteredList.length,
              itemBuilder: (_, index) {
                var task = controller.filteredList[index];
                return ItemWidget(
                  task: task,
                );
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _buildDialog,
        tooltip: 'New task',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
