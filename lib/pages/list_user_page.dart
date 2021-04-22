import 'dart:developer' as developer;
import 'package:demo_1/data/models/user_model.dart';
import 'package:demo_1/data/repository/api/user_api_service.dart';
import 'package:demo_1/widgets/user_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListUserPage extends StatefulWidget {
  static const ROUTE_NAME = 'ListUserPage';
  @override
  _ListUserPageState createState() => _ListUserPageState();
}

class _ListUserPageState extends State<ListUserPage> {
  static const TAG = 'ListUserPage';
  UserApiService _userApiService = UserApiService();

  late Future<List<UserModel>> users;

  @override
  void initState() {
    super.initState();
    users = _userApiService.getUsers();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('User'),
      ),
      body: FutureBuilder<List<UserModel>>(
        future: users,
        builder: (context, snap) {
          if (snap.hasData) {
            return ListView.builder(
                itemBuilder: (context, index) {
                  return UserWidget(user: snap.data![index]);
                },
              itemCount: snap.data!.length,
            );
          } else if (snap.hasError){
            return Center(
              child: Text('Error SML'),
            );
          } else {
            return Center(
              child: CupertinoActivityIndicator(),
            );
          }
        },
      ),
    );
  }
}