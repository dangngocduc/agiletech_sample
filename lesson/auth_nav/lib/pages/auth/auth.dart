import 'dart:developer' as developer;
import 'package:auth_nav/pages/home/home.dart';
import 'package:flutter/material.dart';

class Auth extends StatefulWidget {
  static const ROUTE_NAME = 'Auth';

  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  static const TAG = 'Auth';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Auth"),
      ),
      body: Container(
        alignment: Alignment.bottomCenter,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home()));
          },
          child: Text("Login"),
        ),
      ),
    );
  }
}
