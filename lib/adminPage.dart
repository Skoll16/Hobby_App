import 'package:flutter/material.dart';
class AdminPage extends StatefulWidget {
  AdminPage({Key key}) : super(key: key);

  _AdminPageState createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Hi i am Admin'),
    );
  }
}