import 'dart:developer' as developer;
import 'package:auth_nav/theme/CustomTheme.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  static const ROUTE_NAME = 'SettingPage';

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  static const TAG = 'SettingPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Setting",
          style: Theme.of(context).textTheme.headline6,
        ),
        centerTitle: true,
        backwardsCompatibility: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: ElevatedButton(
          onPressed: () {
            customTheme.changeTheme();
          },
          child: Text("Change Theme"),
        ),
      ),
    );
  }
}
