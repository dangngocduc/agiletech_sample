import 'dart:developer' as developer;
import 'package:auth_nav/data/model/user_repository.dart';
import 'package:auth_nav/pages/home/home_bloc.dart';
import 'package:auth_nav/pages/home/home_event.dart';
import 'package:auth_nav/pages/home/home_state.dart';
import 'package:auth_nav/widget/user_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';

class Home extends StatefulWidget {
  static const ROUTE_NAME = 'Home';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static const TAG = 'Home';
  final _bloc = HomeBloc(HomeState(UserRepository(1, 1, 1, 1, [])));

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      _bloc.add(HomeEventFirstGet());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text("Home"),
        ),
        body: BlocProvider(
          create: (_) => _bloc,
          child: BlocBuilder<HomeBloc, HomeState>(builder: (bloc, state) {
            return Stack(
              children: [
                Container(
                  child: LazyLoadScrollView(
                    onEndOfPage: () {
                      _bloc.add(HomeEventLoadmore(state));
                    },
                    child: state.userRepository.data.isNotEmpty
                        ? ListView.builder(
                            itemCount: state.userRepository.data.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                title: UserWidget(
                                    state.userRepository.data[index]),
                              );
                            })
                        : Container(
                            alignment: Alignment.center,
                            child: SizedBox(
                              width: 40,
                              height: 40,
                              child: CircularProgressIndicator(),
                            ),
                          ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "Logout",
                        style: Theme.of(context).textTheme.bodyText1,
                      )),
                )
              ],
            );
          }),
        ));
  }
}
