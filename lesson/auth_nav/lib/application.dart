import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:auth_nav/pages/auth/auth.dart';
class Application extends StatefulWidget {
  static const ROUTE_NAME = 'Application';

  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  static const TAG = 'Application';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Auth(),
    );
  }
}