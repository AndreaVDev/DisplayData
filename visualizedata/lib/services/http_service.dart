import 'dart:convert';
import 'package:http/http.dart';
import 'package:visualizedata/models/comment_model.dart';
import 'package:visualizedata/models/post_model.dart';
import 'package:visualizedata/models/photo_model.dart';
import 'package:visualizedata/models/todo_model.dart';

class HttpService {
  final String postsURL = "https://jsonplaceholder.typicode.com/posts";
  final String photosURL = "https://jsonplaceholder.typicode.com/photos";
  final String todosURL = "https://jsonplaceholder.typicode.com/todos";

  Future<List<Post>> getPosts() async {
    Response res = await get(Uri.parse(postsURL));

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<Post> posts = body
          .map(
            (dynamic item) => Post.fromJson(item),
          )
          .toList();
      return posts;
    } else {
      throw "Unable to retrive posts.";
    }
  }

  Future<List<Photo>> getPhotos() async {
    Response res = await get(Uri.parse(photosURL));

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<Photo> photos = body
          .map(
            (dynamic item) => Photo.fromJson(item),
          )
          .toList();
      return photos;
    } else {
      throw "Unable to retrive photos.";
    }
  }

  Future<List<Todo>> getTodos() async {
    Response res = await get(Uri.parse(todosURL));

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<Todo> todos = body
          .map(
            (dynamic item) => Todo.fromJson(item),
          )
          .toList();
      return todos;
    } else {
      throw "Unable to retrive todos.";
    }
  }

  Future<List<Comment>> getComments(int postId) async {
    String commentsURL = "https://jsonplaceholder.typicode.com/posts/";
    commentsURL += postId.toString();
    commentsURL += '/comments';
    Response res = await get(Uri.parse(commentsURL));

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<Comment> comments = body
          .map(
            (dynamic item) => Comment.fromJson(item),
          )
          .toList();
      return comments;
    } else {
      throw "Unable to retrive photos.";
    }
  }
}
