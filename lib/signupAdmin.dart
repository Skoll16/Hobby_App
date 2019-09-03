import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
class SignUpAdmin extends StatefulWidget {
  SignUpAdmin({Key key}) : super(key: key);

  _SignUpAdminState createState() => _SignUpAdminState();
}

class _SignUpAdminState extends State<SignUpAdmin> {
  final DBRef=FirebaseDatabase.instance.reference();
  
     void checkLogin(){
   
     DBRef.child('Admin').child(_phoneNumber).once().then((DataSnapshot snapshot){
        if(_email == snapshot.value['email'].toString()&&_password==snapshot.value['password'].toString()){
             Navigator.of(context).pushReplacementNamed('/adminPage');


        }
      print(snapshot.value);
                  
     });
     
        
   }
  
  void writeData(){
    DBRef.child('Admin').child(_phoneNumber).set({
     'name':_name,
     'DOB':_date,
       'gender':_gender,
       'email':_email,
      'phoneNumber':_phoneNumber,
      'password':_password,
    });
  }
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
                height: 10,),
              TextField(
                decoration: InputDecoration(hintText: 'Date of Birth'),
                onChanged: (value) {
                  setState(() {
                    _date = value;
                  });
                },
              ),
               SizedBox(
                height: 10,
              ),
              TextField(
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
                    _password = value;
                  });
                },
                obscureText: true,
              ),
              
               SizedBox(
                height:40 ,
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