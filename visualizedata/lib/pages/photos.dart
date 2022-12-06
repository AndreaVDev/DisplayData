import 'package:flutter/material.dart';
import 'package:visualizedata/pages/photo_detail.dart';
import 'package:visualizedata/services/http_service.dart';
import 'package:visualizedata/models/photo_model.dart';

import '../widgets/nav-drawer.dart';

class PhotosPage extends StatelessWidget {
  final HttpService httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text("Photos"),
      ),
      body: FutureBuilder(
        future: httpService.getPhotos(),
        builder: (BuildContext context, AsyncSnapshot<List<Photo>> snapshot) {
          if (snapshot.hasData) {
            List<Photo>? photos = snapshot.data;
            return ListView(
              children: photos!
                  .map(
                    (Photo photo) => ListTile(
                      leading: Image.network(photo.url),
                      title: Text(photo.title),
                      subtitle: Text("${photo.url}"),
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PhotoDetail(photo: photo))),
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
