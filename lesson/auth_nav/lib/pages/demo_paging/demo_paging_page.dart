import 'dart:developer' as developer;
import 'package:auth_nav/data/model/user.dart';
import 'package:auth_nav/widget/user_widget.dart';
import 'package:flutter/material.dart';
import 'package:fl_paging/fl_paging.dart' as paging;

import 'user_data_source.dart';

class DemoPagingPage extends StatefulWidget {
  static const ROUTE_NAME = 'DemoPagingPage';
  @override
  _DemoPagingPageState createState() => _DemoPagingPageState();
}

class _DemoPagingPageState extends State<DemoPagingPage> {
  static const TAG = 'DemoPagingPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Paging'),
      ),
      body: paging.ListView<User>(
        pageDataSource: UserDataSource(),
        itemBuilder: (context, data, index) {
          return UserWidget(data);
        },
        emptyBuilder: (context) {
          return Container();
        },
        loadingBuilder: (context) {
          return Center(
            child: Text('Loading.....'),
          );
        },
        errorBuilder: (context, error) {
          return Center(
            child: Text('Error.....'),
          );
        },
      ),
    );
  }
}