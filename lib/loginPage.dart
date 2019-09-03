import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  FirebaseDatabase mRef=FirebaseDatabase.instance;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
        child: Container(
          padding: EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
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