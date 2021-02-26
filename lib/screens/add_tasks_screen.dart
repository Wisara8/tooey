import 'package:flutter/material.dart';

class AddTasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "Add Task",
              style: TextStyle(
                fontSize: 30,
                color: Colors.lightBlueAccent,
              ),
              textAlign: TextAlign.center,
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            FlatButton(
              onPressed: () {
                //Add task to list,
              },
              child: Text(
                "Add",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.lightBlueAccent,
            )
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20))),
      ),
    );
  }
}
