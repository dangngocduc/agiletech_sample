import 'package:auth_nav/pages/home/home_state.dart';

abstract class HomeEvent {}

class HomeEventFirstGet extends HomeEvent {}

class HomeEventLoadmore extends HomeEvent {
  HomeState oldState;

  HomeEventLoadmore(this.oldState);
}
