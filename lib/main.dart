import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todooeytooey/screens/tasks_screen.dart';
import 'package:todooeytooey/models/task_data.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:todooeytooey/screens/login_screen.dart';

void main() {
  runApp(MyApp());
  Firebase.initializeApp();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
//        home: LoginScreen(),
      ),
    );
  }
}
