import 'package:flutter/material.dart';
import 'package:todooeytooey/widgets/tasks_tile.dart';
import 'package:provider/provider.dart';
import 'package:todooeytooey/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            taskTitle: Provider.of<TaskData>(context).tasks[index].name,
            isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
            checkboxCallback: (checkboxState) {
//              setState(() {
//                widget.tasks[index].toggleDone();
//              });
            });
      },
      itemCount: Provider.of<TaskData>(context).tasks.length,
    );
  }
}
