import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
class SignUpTeacher extends StatefulWidget {
  SignUpTeacher({Key key}) : super(key: key);

  _SignUpTeacherState createState() => _SignUpTeacherState();
}

class _SignUpTeacherState extends State<SignUpTeacher> {
   final DBRef=FirebaseDatabase.instance.reference();
   void checkLogin(){
    
      /****/
   }
  void writeData(){
    DBRef.child('teachers').child(_phoneNumber).set({
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
              ),
              TextField(
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
                  checkLogin();
                   
                },
              ),
              SizedBox(
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