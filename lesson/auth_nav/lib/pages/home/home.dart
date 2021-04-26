import 'dart:developer' as developer;
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static const ROUTE_NAME = 'Home';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static const TAG = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text("Home"),
      ),
      body: Container(
        alignment: Alignment.bottomCenter,
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("Logout"),
        ),
      ),
    );
  }
}
