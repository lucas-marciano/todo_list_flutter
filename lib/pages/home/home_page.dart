import 'package:flutter/material.dart';
import 'package:todo_list/pages/home/widgets/dialog_widget.dart';
import 'package:todo_list/pages/home/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          decoration: InputDecoration(
            hintText: "Search ...",
            hintStyle: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (_, index) => ItemWidget(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _buildDialog,
        tooltip: 'New task',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
