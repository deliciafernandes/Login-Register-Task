import 'package:flutter/material.dart';
import 'package:task/LoginPage.dart';
import 'package:task/RegisterPage.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Abel'),
      initialRoute: RegisterPage.id,
      routes: {
        RegisterPage.id: (context) => RegisterPage(),
        LoginPage.id: (context) => LoginPage(),
        //ForgetPassword.id: (context) => ForgetPassword(),
      },
    );
  }
}
