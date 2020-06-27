import 'package:flutter/material.dart';
import 'package:task/RegisterPage.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  static String id = '/LoginPage';

  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Image.asset('assets/images/background.png'),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: 60.0, bottom: 20.0, left: 20.0, right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Login',
                  style: TextStyle(fontSize: 50.0),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome back,',
                      style: TextStyle(fontSize: 30.0),
                    ),
                    Text(
                      'please login',
                      style: TextStyle(fontSize: 30.0),
                    ),
                    Text(
                      'to your account',
                      style: TextStyle(fontSize: 30.0),
                    ),
                  ],
                ),
                Column(
                  children: [
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (value) {
                        email = value;
                      },
                      decoration: InputDecoration(
                        hintText: 'Email',
                      ),
                    ),
                    SizedBox(height: 20.0),
                    TextField(
                      keyboardType: TextInputType.visiblePassword,
                      onChanged: (value) {
                        password = value;
                      },
                      decoration: InputDecoration(
                        hintText: 'Password',
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Align(
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                        onTap: () {
                          //TODO: Implement forgot password
                        },
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(fontSize: 20.0, color: Colors.blue),
                        ),
                      ),
                    ),
                  ],
                ),
                RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  color: Color(0xff447def),
                  onPressed: () {
                    //TODO: Implement login functionality
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 25.0, color: Colors.white),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        height: 1.0,
                        width: 60.0,
                        color: Colors.black87,
                      ),
                    ),
                    Text(
                      'Or',
                      style: TextStyle(fontSize: 25.0),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        height: 1.0,
                        width: 60.0,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: RaisedButton(
                        padding: EdgeInsets.symmetric(vertical: 5.0),
                        color: Colors.white,
                        shape: ContinuousRectangleBorder(
                          side: BorderSide(width: 0.5, color: Colors.grey[400]),
                        ),
                        onPressed: () {
                          //TODO: Implement gmail functionality
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/google.png',
                                fit: BoxFit.contain, width: 40.0, height: 40.0),
                            Text(
                              'Google',
                              style: TextStyle(
                                  fontSize: 25.0, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0),
                    Expanded(
                      child: RaisedButton(
                        padding: EdgeInsets.symmetric(vertical: 5.0),
                        color: Colors.white,
                        shape: ContinuousRectangleBorder(
                          side: BorderSide(width: 0.5, color: Colors.grey[400]),
                        ),
                        onPressed: () {
                          //TODO: Implement facebook functionality
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/facebook.png',
                                fit: BoxFit.cover, width: 40.0, height: 40.0),
                            Text(
                              'Facebook',
                              style: TextStyle(
                                  fontSize: 25.0, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(fontSize: 25.0),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, RegisterPage.id);
                      },
                      child: Text(
                        ' Sign Up',
                        style: TextStyle(fontSize: 25.0, color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}