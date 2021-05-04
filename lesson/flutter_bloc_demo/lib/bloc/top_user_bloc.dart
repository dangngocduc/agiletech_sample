import 'package:demo_data/repostitory/user_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_demo/bloc/top_user_state.dart';

class TopUserBloc extends Cubit<TopUserState> {
  UserRepository userRepository;

  TopUserBloc({required this.userRepository}) : super(TopUserState.loading());


  void fetchUser() {
    emit(TopUserState.loading());
    userRepository.getUserByPage(1).then((value) {
      emit(TopUserState(value));
    }, onError: (error) {
      emit(TopUserState.error(error));
    });
  }

}