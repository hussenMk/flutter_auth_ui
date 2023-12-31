import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/view/screen/auth/login.dart';
import 'package:flutter_auth_ui/view/screen/auth/signup.dart';
import 'package:flutter_auth_ui/view/screen/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Cairo"),
      debugShowCheckedModeBanner: false,
      routes: {
        "home": (context) => Welcome(),
        "login": (context) => const Login(),
        "signUp": (context) => const SignUp(),
      },
      home: Welcome(),
    );
  }
}
