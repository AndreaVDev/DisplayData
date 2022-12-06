import 'package:flutter/material.dart';
import 'package:visualizedata/models/comment_model.dart';
import 'package:visualizedata/pages/comment_detail.dart';
import 'package:visualizedata/pages/photo_detail.dart';
import 'package:visualizedata/services/http_service.dart';
import 'package:visualizedata/models/photo_model.dart';

import '../models/post_model.dart';
import '../widgets/nav-drawer.dart';

class CommentsPage extends StatelessWidget {
  final Post post;

  final HttpService httpService = HttpService();

  CommentsPage({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text("Comments"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: FutureBuilder(
        future: httpService.getComments(post.id),
        builder: (BuildContext context, AsyncSnapshot<List<Comment>> snapshot) {
          if (snapshot.hasData) {
            List<Comment>? comments = snapshot.data;
            return ListView(
              children: comments!
                  .map(
                    (Comment comment) => ListTile(
                      title: Text(comment.name),
                      subtitle: Text(comment.body),
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              CommentDetail(comment: comment))),
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
