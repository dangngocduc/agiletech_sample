import 'package:auth_nav/data/model/user_repository.dart';
import 'package:auth_nav/data/repository/api/api.dart';
import 'package:auth_nav/pages/home/home_event.dart';
import 'package:auth_nav/pages/home/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(HomeState initialState) : super(initialState);

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    if (event is HomeEventFirstGet) {
      HomeState homeSateNew = await Api.getUser("1");
      yield homeSateNew;
    } else if (event is HomeEventLoadmore) {
      // if (event.oldState.userRepository.page + 1 <=
      //     event.oldState.userRepository.totalPages) {

        HomeState homeSateNew = await Api.getUser(
            ("2").toString());
        HomeState newState = HomeState(UserRepository(
            homeSateNew.userRepository.page,
            homeSateNew.userRepository.perPage,
            homeSateNew.userRepository.total,
            homeSateNew.userRepository.totalPages, []));

        newState.userRepository.data.addAll(event.oldState.userRepository.data);
        newState.userRepository.data.addAll(homeSateNew.userRepository.data);
        yield newState;
      // }
    }
  }
}
