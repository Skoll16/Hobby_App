import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_database/firebase_database.dart';

import 'package:sports_hub/login_page.dart';

class SignUpPage extends StatefulWidget {
  static const routeName = '/signup_page';

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final dbRef = FirebaseDatabase.instance.reference();
  String _email, _password, _name, _gender, _phoneNumber;
  DateTime _dob;
/*
  void _datePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1940),
      lastDate: DateTime.now(),
    ).then((pickedDate) {
      if (pickedDate == null) {return;}
      setState(() => _dob = pickedDate);
    });
  }
  */
  void _writeData(){
    dbRef.child('users').child(_phoneNumber).set({
      'name':_name,
      'D.O.B':_dob,
      'gender':_gender,
       'email':_email,
      'password':_password,
      'phoneNumber':_phoneNumber,
    });
    Navigator.pushNamed(context, LoginPage.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up Page'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(hintText: 'Name'),
                  onChanged: (value) => setState(() => _name = value),
                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(hintText: 'Date of Birth'),
                  keyboardType: TextInputType.datetime,
                  onChanged: (value) => setState(() => _dob = DateTime.parse(value)),
                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(hintText: 'Gender'),
                  onChanged: (value) => setState(() => _gender = value),
                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(hintText: 'Email'),
                  onChanged: (value) => setState(() => _email = value),
                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(hintText: 'Phone Number'),
                  keyboardType: TextInputType.number,
                  onChanged: (value) => setState(() => _phoneNumber = value),
                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(hintText: 'Password'),
                  onChanged: (value) => setState(() => _password = value),
                  obscureText: true,
                ),
                SizedBox(height: 20,),
                RaisedButton(
                  child: Text(
                    'SignUp',
                  ),
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  elevation: 8,
                  onPressed: _writeData,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}