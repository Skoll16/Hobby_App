import 'package:flutter/material.dart';

import 'package:sports_hub/models/login_type.dart';
import 'package:sports_hub/signup_page.dart';

class LoginWidget extends StatefulWidget {
  static const routeName = '/user_login';
  final LoginType loginType;

  LoginWidget({@required this.loginType});

  @override
  _LoginWidgetState createState() => _LoginWidgetState(loginType: loginType);
}

class _LoginWidgetState extends State<LoginWidget> {
  final LoginType loginType;
  String _email, _password;

  _LoginWidgetState({@required this.loginType});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
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
                },),
              SizedBox(height: 5,),
              TextField(
                decoration: InputDecoration(hintText: 'Password'),
                onChanged: (value) {
                  setState(() {
                    _password = value;
                  });
                },
                obscureText: true,
              ),
              SizedBox(height: 15,),
              RaisedButton(
                child: Text('Login',),
                color: Colors.blueAccent,
                textColor: Colors.white,
                elevation: 10,
                onPressed: () {
                  Navigator.pushNamed(context, loginRouteNameMap[loginType]);
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Not yet signed up?'),
                  FlatButton(
                    child: Text(
                      'Sign Up',
                      textAlign: TextAlign.start,
                      style: TextStyle(decoration: TextDecoration.underline),),
                    onPressed: () => Navigator.pushNamed(context, SignUpPage.routeName),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
