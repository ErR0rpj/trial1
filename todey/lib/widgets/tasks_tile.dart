import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Task name',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: ListCheckBox(isChecked, (bool isChecked){
        setState(() {
          this.isChecked = isChecked;
        });
      },),
    );
  }
}

class ListCheckBox extends StatelessWidget {
  final bool isChecked;
  final Function onChanged;

  ListCheckBox(this.isChecked, this.onChanged);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: onChanged,
    );
  }
}
