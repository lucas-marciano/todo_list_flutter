import 'package:flutter/material.dart';

class DialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Insert new task"),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              onChanged: (value) {},
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Title",
              ),
            ),
            SizedBox(height: 16),
            TextField(
              maxLines: 4,
              onChanged: (value) {},
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
          onPressed: () {},
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
