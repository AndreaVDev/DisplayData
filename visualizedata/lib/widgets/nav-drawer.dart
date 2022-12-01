import 'package:flutter/material.dart';
import 'package:visualizedata/pages/posts.dart';
import 'package:visualizedata/pages/photos.dart';
import 'package:visualizedata/pages/todos.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Side menu',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            //decoration: BoxDecoration(
            //color: Colors.green,
            //image: DecorationImage(
            //fit: BoxFit.fill,
            //image: AssetImage('assets/images/cover.jpg'))),
          ),
          ListTile(
              leading: Icon(Icons.input),
              title: Text('Posts'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PostsPage()),
                );
              }),
          ListTile(
              leading: Icon(Icons.verified_user),
              title: Text('Photos'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PhotosPage()),
                );
              }),
          ListTile(
              leading: Icon(Icons.input),
              title: Text('Todos'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TodosPage()),
                );
              }),
        ],
      ),
    );
  }
}
