import 'dart:developer' as developer;
import 'package:demo_1/pages/list_user_page.dart';
import 'package:flutter/material.dart';

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
      initialRoute: ListUserPage.ROUTE_NAME,
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
          brightness: Brightness.light,
          elevation: 1,
          backgroundColor: Colors.white,
          textTheme: ThemeData.light().textTheme.copyWith(
            headline6: TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.bold
            )
          )
        ),
      ),
      onGenerateRoute: (settings) {
        switch(settings.name) {
          default:
            return MaterialPageRoute(builder: (context) => ListUserPage());
        }
      },
    );
  }
}