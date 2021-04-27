import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

CustomTheme customTheme = CustomTheme();

class CustomTheme with ChangeNotifier {
  bool _isDarkMode = false;

  ThemeMode get getCurentThem {
    if (_isDarkMode) {
      return ThemeMode.dark;
    } else {
      return ThemeMode.light;
    }
  }

  void changeTheme() {
    print("click change theme");
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }

  static ThemeData get light {
    return ThemeData().copyWith(
        backgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
            iconTheme: IconThemeData().copyWith(color: Colors.black),
            brightness: Brightness.light,
            color: Colors.white,
            actionsIconTheme: IconThemeData().copyWith(color: Colors.black)),
        textTheme: ThemeData().textTheme.copyWith(
            headline6:
                ThemeData().textTheme.headline6!.copyWith(color: Colors.black),
            bodyText1:
                ThemeData().textTheme.bodyText1!.copyWith(color: Colors.black),
            bodyText2:
                ThemeData().textTheme.bodyText2!.copyWith(color: Colors.black)),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.black,
            onPrimary: Colors.white,
          ),
        ));
  }

  static ThemeData get dark {
    return ThemeData().copyWith(
        backgroundColor: Colors.black,
        appBarTheme: AppBarTheme(
            iconTheme: IconThemeData().copyWith(color: Colors.white),
            brightness: Brightness.dark,
            color: Colors.black,
            textTheme: ThemeData()
                .textTheme
                .copyWith(headline6: TextStyle(color: Colors.white)),
            actionsIconTheme: IconThemeData().copyWith(color: Colors.white)),
        textTheme: ThemeData().textTheme.copyWith(
            headline6:
                ThemeData().textTheme.headline6!.copyWith(color: Colors.white),
            bodyText1:
                ThemeData().textTheme.bodyText1!.copyWith(color: Colors.white),
            bodyText2:
                ThemeData().textTheme.bodyText2!.copyWith(color: Colors.white)),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
            onPrimary: Colors.black,
          ),
        ));
  }
}
