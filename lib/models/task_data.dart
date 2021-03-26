import 'package:flutter/material.dart';
import 'package:todooeytooey/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: "Buy Milk"),
    Task(name: "Buy Gas"),
    Task(name: "Buy House"),
  ];

  int get taskCount {
    return tasks.length;
  }
}
