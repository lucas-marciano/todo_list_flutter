import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("Title"),
      leading: Checkbox(
        value: true,
        onChanged: (bool value) {},
      ),
      trailing: IconButton(
        color: Colors.red,
        onPressed: () {},
        icon: Icon(Icons.remove_circle_outline),
      ),
    );
  }
}
