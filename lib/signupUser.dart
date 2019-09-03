import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
class SignUpPage extends StatefulWidget {
  SignUpPage({Key key}) : super(key: key);

  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
     void checkLogin(){
   
     DBRef.child('users').child(_phoneNumber).once().then((DataSnapshot snapshot){
       if(_email == snapshot.value['email'].toString()&&_password==snapshot.value['password'].toString()){
            Navigator.of(context).pushReplacementNamed('/userPage');


       }
                  
     });
     
        
   }

  void writeData(){
    DBRef.child('users').child(_phoneNumber).set({
    'name':_name,
      'D.O.B':_date,
      'gender':_gender,
       'email':_email,
      'password':_password,
      'phoneNumber':_phoneNumber,
    });
  }
  final DBRef=FirebaseDatabase.instance.reference();
  String _email,_password,_phoneNumber,_name,_date,_gender;
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
                decoration: InputDecoration(hintText: 'Name'),
                onChanged: (value) {
                  setState(() {
                    _name= value;
                  });
                },
              ),
              SizedBox(
                height: 10,
              ),TextField(
                decoration: InputDecoration(hintText: 'Date of Birth'),
                onChanged: (value) {
                  setState(() {
                    _date = value;
                  });
                },
              ),
               SizedBox(
                height: 10,
              ),TextField(
                decoration: InputDecoration(hintText: 'Gender'),
                onChanged: (value) {
                  setState(() {
                    _gender = value;
                  });
                },
              ),
               SizedBox(
                height: 10,
              ),TextField(
                decoration: InputDecoration(hintText: 'Email'),
                onChanged: (value) {
                  setState(() {
                    _email = value;
                  });
                },
              ),
              SizedBox(height: 10,),
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
                    _phoneNumber = value;
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

