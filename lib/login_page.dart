import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

import 'package:sports_hub/models/login_type.dart';
import 'package:sports_hub/login_widget.dart';

class LoginPage extends StatelessWidget {
  static const routeName = '/login_page';
  
  String _email, _password;
  final dbRef = FirebaseDatabase.instance.reference();
/*
  void _checkLogin(){
    dbRef.child('users').child(_phoneNumber).once().then((DataSnapshot snapshot){
      if(_email == snapshot.value['email'].toString() 
          &&_password==snapshot.value['password'].toString()){
        Navigator.of(context).pushReplacementNamed('/userPage');
      }        
    });
  }
 */ 
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Login Page'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.person),
                text: 'User',
              ),
              Tab(
                icon: Icon(Icons.school),
                text: 'Mentor',
              ),
              Tab(
                icon: Icon(Icons.settings_applications),
                text: 'Admin',
              )],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            LoginWidget(loginType: LoginType.User,),
            LoginWidget(loginType: LoginType.Mentor,),
            LoginWidget(loginType: LoginType.Admin,),
          ],
        ),
      ),
    );
  }
}
