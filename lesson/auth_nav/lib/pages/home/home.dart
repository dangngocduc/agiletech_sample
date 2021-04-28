import 'dart:developer' as developer;
import 'package:auth_nav/data/model/user_repository.dart';
import 'package:auth_nav/pages/home/home_bloc.dart';
import 'package:auth_nav/pages/home/home_event.dart';
import 'package:auth_nav/pages/home/home_state.dart';
import 'package:auth_nav/widget/user_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  static const ROUTE_NAME = 'Home';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static const TAG = 'Home';
  final _bloc = HomeBloc(HomeState(UserRepository(1, 1, 1, 1, [])));
  var _isLoadMore = false;

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
          child: BlocBuilder<HomeBloc, HomeState>(buildWhen: (homeState, _) {
            setState(() {
              _isLoadMore = false;
            });
            return true;
          }, builder: (bloc, state) {
            return Stack(
              children: [
                Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: state.userRepository.data.isNotEmpty
                        ? _content(state)
                        : Container(
                            alignment: Alignment.center,
                            child: SizedBox(
                              width: 40,
                              height: 40,
                              child: CircularProgressIndicator(),
                            ),
                          )),
                Align(
                  alignment: Alignment.bottomRight,
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

  _content(state) {
    return NotificationListener<ScrollNotification>(
      onNotification: (scrollNotification) {
        if (scrollNotification is ScrollEndNotification) {
          if (!_isLoadMore) {
            setState(() {
              _isLoadMore = true;
            });
            Future.delayed(Duration(seconds: 4), () {
              _bloc.add(HomeEventLoadmore(_bloc.state));
            });
          }
        }
        return true;
      },
      child: ListView(
        shrinkWrap: true,
        children: [
          ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: state.userRepository.data.length,
              itemBuilder: (context, index) {
                return UserWidget(state.userRepository.data[index]);
              }),
          Wrap(
            alignment: WrapAlignment.center,
            children: [
              Visibility(
                  visible: _isLoadMore,
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    width: 30,
                    height:30,
                    child: CircularProgressIndicator(),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
