import 'dart:developer' as developer;
import 'package:auth_nav/data/model/book_model.dart';
import 'package:auth_nav/data/repository/repo/book_repository.dart';
import 'package:auth_nav/pages/paging/book_data_source.dart';
import 'package:auth_nav/widget/book_widget.dart';
import 'package:flutter/material.dart';
import 'package:fl_paging/fl_paging.dart' as paging;

class PagingPage extends StatefulWidget {
  static const ROUTE_NAME = 'PagingPage';

  @override
  _PagingPageState createState() => _PagingPageState();
}

class _PagingPageState extends State<PagingPage> {
  static const TAG = 'PagingPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Paging",
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: Container(
        child: paging.ListView<HydraMember>(
          pageDataSource: BookDataSource(),
          itemBuilder: (context, data, index) {
            return BookWidget(data);
          },
        ),
      ),
    );
  }
}
