import 'package:flutter/material.dart';
import 'package:visualizedata/models/comment_model.dart';
import 'package:visualizedata/pages/comments.dart';

class CommentDetail extends StatelessWidget {
  final Comment comment;

  CommentDetail({required this.comment});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(comment.name),
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
                        title: Text("Email"),
                        subtitle: Text(comment.email),
                      ),
                      ListTile(
                        title: Text("Body"),
                        subtitle: Text(comment.body),
                      ),
                      ListTile(
                        title: Text("PostId"),
                        subtitle: Text("${comment.postId}"),
                      ),
                      ListTile(
                        title: Text("CommentId"),
                        subtitle: Text("${comment.id}"),
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
