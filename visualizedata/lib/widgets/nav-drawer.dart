import 'package:flutter/material.dart';
import 'package:visualizedata/pages/posts.dart';
import 'package:visualizedata/pages/photos.dart';
import 'package:visualizedata/pages/todos.dart';
import 'package:visualizedata/widgets/login_widget.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/cover.jpg'))),
            child: Text(
              'Side menu',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          ListTile(
              leading: Icon(Icons.announcement),
              title: Text('Posts'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PostsPage()),
                );
              }),
          ListTile(
              leading: Icon(Icons.photo),
              title: Text('Photos'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PhotosPage()),
                );
              }),
          ListTile(
              leading: Icon(Icons.list),
              title: Text('Todos'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TodosPage()),
                );
              }),
          ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MyFlutterLoginWidget()),
                );
              }),
        ],
      ),
    );
  }
}
