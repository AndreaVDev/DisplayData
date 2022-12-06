import 'package:flutter/material.dart';
import 'package:visualizedata/models/photo_model.dart';

class PhotoDetail extends StatelessWidget {
  final Photo photo;

  PhotoDetail({required this.photo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(photo.title),
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
                        subtitle: Text(photo.title),
                      ),
                      ListTile(
                        leading: Image.network(photo.url),
                        title: Text("Photo"),
                        subtitle: Text("${photo.url}"),
                      ),
                      ListTile(
                        title: Text("Album Id"),
                        subtitle: Text("${photo.albumId}"),
                      ),
                      ListTile(
                        title: Text("User ID"),
                        subtitle: Text("${photo.id}"),
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
