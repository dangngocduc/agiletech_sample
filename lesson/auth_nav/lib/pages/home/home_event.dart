import 'package:auth_nav/pages/home/home_state.dart';
import 'package:flutter/cupertino.dart';

abstract class HomeEvent {}

class HomeEventFirstGet extends HomeEvent {}

class HomeEventLoadmore extends HomeEvent {
  HomeState oldState;

  HomeEventLoadmore(this.oldState);
}

class HomeEventChangeTheme extends HomeEvent {
  BuildContext context;

  HomeEventChangeTheme(this.context);
}
