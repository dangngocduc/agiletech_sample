import 'dart:developer' as developer;
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  static const ROUTE_NAME = 'DetailPage';

 final  int uid;

  DetailPage({required this.uid});

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  static const TAG = 'DetailPage';
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}