import 'package:flutter/material.dart';
import 'package:visualizedata/models/todo_model.dart';

class TodoDetail extends StatelessWidget {
  final Todo todo;

  TodoDetail({required this.todo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(todo.title),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: <Widget>[
                Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ListTile(
                        title: Text("Title"),
                        subtitle: Text(todo.title),
                      ),
                      ListTile(
                        title: Text("ID"),
                        subtitle: Text("${todo.id}"),
                      ),
                      ListTile(
                        title: Text("Body"),
                        subtitle: Text("${todo.completed}"),
                      ),
                      ListTile(
                        title: Text("User ID"),
                        subtitle: Text("${todo.userId}"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
