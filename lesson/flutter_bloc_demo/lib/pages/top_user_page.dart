import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_demo/bloc/top_user_bloc.dart';
import 'package:flutter_bloc_demo/bloc/top_user_state.dart';


class TopUserPage extends StatefulWidget {
  static const ROUTE_NAME = 'TopUserPage';
  @override
  _TopUserPageState createState() => _TopUserPageState();
}

class _TopUserPageState extends State<TopUserPage> {
  static const TAG = 'TopUserPage';

  @override
  void initState() {
    super.initState();
    context.read<TopUserBloc>().fetchUser();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: context.watch<TopUserBloc>().state.when(
            (user) => Container(
          alignment: Alignment.center,
          child: Text('${user.length} User'),
        ),
        loading: () => Center(
          child: CircularProgressIndicator(),
        ),
        error: (error) => Container(color: Colors.red,),
      ),
    );
  }
}
