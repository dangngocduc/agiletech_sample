import 'package:auth_nav/data/model/user_repository.dart';

class HomeState {

  bool isLoadMore = false;
  UserRepository userRepository;


  HomeState(this.userRepository);
}
