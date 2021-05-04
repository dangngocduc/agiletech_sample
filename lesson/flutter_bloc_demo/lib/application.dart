import 'package:demo_data/repostitory/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_demo/pages/top_user_page.dart';

import 'bloc/top_user_bloc.dart';

class Application extends StatefulWidget {
  static const ROUTE_NAME = 'Application';

  final UserRepository userRepository;

  Application(this.userRepository);

  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {

  @override
  Widget build(BuildContext context) {
    //Init Bloc - Cubit
    return BlocProvider(
        create: (context) => TopUserBloc(userRepository: widget.userRepository),
        child:  MaterialApp(
          onGenerateRoute: (settings) {
            return MaterialPageRoute(
              builder: (context) => TopUserPage()
            );
          },
        )
    );
  }
}
