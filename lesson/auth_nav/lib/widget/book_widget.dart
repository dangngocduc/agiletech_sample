import 'dart:developer' as developer;
import 'package:auth_nav/data/model/book_model.dart';
import 'package:flutter/material.dart';

class BookWidget extends StatefulWidget {
  final HydraMember book;

  BookWidget(this.book);

  static const ROUTE_NAME = 'BookWidget';

  @override
  _BookWidgetState createState() => _BookWidgetState();
}

class _BookWidgetState extends State<BookWidget> {
  static const TAG = 'BookWidget';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title: Text(widget.book.title),
        subtitle: Text(widget.book.description),
      ),
    );
  }
}
