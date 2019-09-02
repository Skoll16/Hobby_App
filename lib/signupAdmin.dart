import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
class SignUpAdmin extends StatefulWidget {
  SignUpAdmin({Key key}) : super(key: key);

  _SignUpAdminState createState() => _SignUpAdminState();
}

class _SignUpAdminState extends State<SignUpAdmin> {
  final DBRef=FirebaseDatabase.instance.reference();
  void writeData(){
    DBRef.child('Admin').child(_phoneNumber).set({
     'email':_email,
     'password':_password,
     'phoneNumber':_phoneNumber
    });
  }
  String _email,_password,_phoneNumber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
        child: Container(
          padding: EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(hintText: 'Email'),
                onChanged: (value) {
                  setState(() {
                    _email = value;
                  });
                },
              ),
              SizedBox(
                height: 10,
              ),TextField(
                decoration: InputDecoration(hintText: 'Phone Number'),
                onChanged: (value) {
                  setState(() {
                    _phoneNumber = value;
                  });
                },
              ),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(hintText: 'Password'),
                onChanged: (value) {
                  setState(() {
                    _password = value;
                  });
                },
                obscureText: true,
              ),
              
               SizedBox(
                height: 10,
              ),
              RaisedButton(
                child: Text(
                  'Login',
                ),
                color: Colors.blueAccent,
                textColor: Colors.white,
                elevation: 8,
                onPressed: () {
                  //Data();
                   
                },
              ),SizedBox(
                height: 10,
              ),
              RaisedButton(
                child: Text(
                  'SignUp',
                ),
                color: Colors.blueAccent,
                textColor: Colors.white,
                elevation: 8,
                onPressed: () {
                  writeData();
                   
                },
              ),
              
             
            ],
          ),
        ),
      ),



    );
}
}