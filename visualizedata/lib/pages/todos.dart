import 'package:flutter/material.dart';
import 'package:visualizedata/pages/todo_detail.dart';
import 'package:visualizedata/services/http_service.dart';
import 'package:visualizedata/models/todo_model.dart';

class TodosPage extends StatelessWidget {
  final HttpService httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todos"),
      ),
      body: FutureBuilder(
        future: httpService.getTodos(),
        builder: (BuildContext context, AsyncSnapshot<List<Todo>> snapshot) {
          if (snapshot.hasData) {
            List<Todo>? todos = snapshot.data;
            return ListView(
              children: todos!
                  .map(
                    (Todo todo) => ListTile(
                      title: Text(todo.title),
                      subtitle: Text("${todo.id}"),
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => TodoDetail(todo: todo))),
                    ),
                  )
                  .toList(),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
