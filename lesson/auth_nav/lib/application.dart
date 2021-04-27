import 'dart:developer' as developer;
import 'package:auth_nav/pages/home/home.dart';
import 'package:auth_nav/theme/CustomTheme.dart';
import 'package:flutter/material.dart';
import 'pages/auth/sign_in.dart';
import 'pages/auth/sign_up_screen.dart';

class Application extends StatefulWidget {
  static const ROUTE_NAME = 'Application';

  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  static const TAG = 'Application';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    customTheme.addListener(() {
      print("change theme");
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.light,
      darkTheme: CustomTheme.dark,
      themeMode: customTheme.getCurentThem,
      home: SignIn(),
      // home: Home(),
    );
  }
}
