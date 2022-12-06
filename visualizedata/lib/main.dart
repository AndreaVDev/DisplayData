import 'package:flutter/material.dart';
import 'package:visualizedata/widgets/nav-drawer.dart';
import 'package:visualizedata/widgets/login_widget.dart';

const users = {
  'dribbble@gmail.com': '12345',
  'hunter@gmail.com': 'hunter',
  'test@gmail.com': 'test',
  'a@a': 'a',
};

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  // const MyHomePage({super.key});

  // Duration get loginTime => const Duration(milliseconds: 2250);

  // Future<String?> _authUser(LoginData data) {
  //   debugPrint('Name: ${data.name}, Password: ${data.password}');
  //   return Future.delayed(loginTime).then((_) {
  //     if (!users.containsKey(data.name)) {
  //       return 'User not exists';
  //     }
  //     if (users[data.name] != data.password) {
  //       return 'Password does not match';
  //     }
  //     return null;
  //   });
  // }

  // Future<String> _recoverPassword(String name) {
  //   debugPrint('Name: $name');
  //   return Future.delayed(loginTime).then((_) {
  //     if (!users.containsKey(name)) {
  //       return 'User not exists';
  //     }
  //     return 'User exists';
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: MyFlutterLoginWidget(),
      ),
    );
  }
}

//   @override
//   Widget build(BuildContext context) {
//     return FlutterLogin(
//       title: 'Data',
//       //logo: AssetImage('assets/images/6576.png_300.png'),
//       onLogin: _authUser,
//       onSubmitAnimationCompleted: () {
//         Navigator.of(context).pushReplacement(MaterialPageRoute(
//           builder: (context) => PostsPage(),
//         ));
//       },
//       onRecoverPassword: _recoverPassword,
//     );
//   }
// }
