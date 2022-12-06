import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';

import '../pages/posts.dart';

const users = {
  'dribbble@gmail.com': '12345',
  'hunter@gmail.com': 'hunter',
  'test@gmail.com': 'test',
  'a@a': 'a',
};

class MyFlutterLoginWidget extends StatelessWidget {
  Duration get loginTime => const Duration(milliseconds: 2250);

  Future<String?> _authUser(LoginData data) {
    debugPrint('Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(data.name)) {
        return 'User not exists';
      }
      if (users[data.name] != data.password) {
        return 'Password does not match';
      }
      return null;
    });
  }

  Future<String> _recoverPassword(String name) {
    debugPrint('Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'User not exists';
      }
      return 'User exists';
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: 'DataMe',
      //logo: AssetImage('assets/images/6576.png_300.png'),
      onLogin: _authUser,
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => PostsPage(),
        ));
      },
      onRecoverPassword: _recoverPassword,
    );
  }
}
