import 'package:flutter/material.dart';

import 'package:sports_hub/login_page.dart';
import 'package:sports_hub/signup_page.dart';
import 'package:sports_hub/users/user/user_page.dart';
import 'package:sports_hub/users/mentor/mentor_page.dart';
import 'package:sports_hub/users/admin/admin_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      routes: <String, WidgetBuilder>{
        LoginPage.routeName: (BuildContext context) => LoginPage(),
        SignUpPage.routeName: (BuildContext context) => SignUpPage(),
        UserPage.routeName: (BuildContext context) => UserPage(),
        MentorPage.routeName: (BuildContext context) => MentorPage(),
        AdminPage.routeName: (BuildContext context) => AdminPage(),
      },
    );
  }
}
