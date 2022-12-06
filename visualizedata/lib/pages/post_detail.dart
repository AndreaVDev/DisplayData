import 'package:flutter/material.dart';
import 'package:visualizedata/models/post_model.dart';
import 'package:visualizedata/pages/comments.dart';

class PostDetail extends StatelessWidget {
  final Post post;

  PostDetail({required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(post.title),
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
                        subtitle: Text(post.title),
                      ),
                      ListTile(
                        title: Text("ID"),
                        subtitle: RichText(
                          text: const TextSpan(
                            text: 'Comments..',
                            style: TextStyle(
                                fontWeight: FontWeight.w100,
                                fontStyle: FontStyle.italic,
                                color: Colors.lightBlueAccent,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                        onTap: () =>
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => CommentsPage(
                                      post: post,
                                    ))),
                      ),
                      ListTile(
                        title: Text("Body"),
                        subtitle: Text(post.body),
                      ),
                      ListTile(
                        title: Text("User ID"),
                        subtitle: Text("${post.userId}"),
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
