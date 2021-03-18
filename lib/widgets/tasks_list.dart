import 'package:flutter/material.dart';
import 'package:todooeytooey/widgets/tasks_tile.dart';
import 'package:todooeytooey/models/task.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: "Buy Milk"),
    Task(name: "Buy Gas"),
    Task(name: "Buy House"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TaskTile(
          taskTitle: tasks[0].name,
          isChecked: tasks[0].isDone,
        ),
        TaskTile(
          taskTitle: tasks[1].name,
          isChecked: tasks[1].isDone,
        ),
        TaskTile(
          taskTitle: tasks[2].name,
          isChecked: tasks[2].isDone,
        ),
      ],
    );
  }
}
