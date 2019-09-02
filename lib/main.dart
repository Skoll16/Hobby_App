import 'package:flutter/material.dart';
import 'loginPage.dart';

void main()=>runApp(new MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
   home:LoginPage(),
    routes: <String,WidgetBuilder>{
    '/landingpage':(BuildContext context)=>new MyApp(),
    // '/signup':(BuildContext context)=> new SignUpPage(),
    // '/homepage':(BuildContext context)=>new HomePage(),
    // '/phoneauth':(BuildContext context)=>new phoneAuth(),
    // '/userInfo':(BuildContext context)=>new userInfo(),
    },

  );
  }
}