import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';
class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  FirebaseDatabase mRef=FirebaseDatabase.instance;
  String _email,_password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
        child: Container(
          padding: EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // TextField(
              //   decoration: InputDecoration(hintText: 'Email'),
              //   onChanged: (value) {
              //     setState(() {
              //       _email = value;
              //     });
              //   },
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              // TextField(
              //   decoration: InputDecoration(hintText: 'Password'),
              //   onChanged: (value) {
              //     setState(() {
              //       _password = value;
              //     });
              //   },
              //   obscureText: true,
              // ),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                child: Text(
                  'User',
                ),
                color: Colors.blueAccent,
                textColor: Colors.white,
                elevation: 8,
                onPressed: () {
                   Navigator.pushNamed(context, '/signup');
                },
              ),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                child: Text(
                  'Admin',
                ),
                color: Colors.blueAccent,
                textColor: Colors.white,
                elevation: 8,
                onPressed: () {
                   Navigator.pushNamed(context, '/signupAdmin');
                },
              ),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                child: Text(
                  'Teacher',
                ),
                color: Colors.blueAccent,
                textColor: Colors.white,
                elevation: 8,
                onPressed: () {
                   Navigator.pushNamed(context, '/signupTeacher');
                },
              ),
            ],
          ),
        ),
      ),



    );
  }
}