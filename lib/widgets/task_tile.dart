import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String name;

  final Function checkBoxCallback;
  final Function onLongPressCallBack;

  TaskTile(
      {this.name,
      this.isChecked,
      this.checkBoxCallback,
      this.onLongPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          this.name,
          style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 22,
              decoration: this.isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
            value: isChecked,
            activeColor: Colors.lightBlueAccent,
            onChanged: checkBoxCallback),
        onLongPress: onLongPressCallBack);
  }
}
