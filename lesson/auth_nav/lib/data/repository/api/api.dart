import 'package:auth_nav/data/model/user.dart';
import 'package:auth_nav/data/model/user_repository.dart';
import 'package:auth_nav/pages/home/home.dart';
import 'package:auth_nav/pages/home/home_state.dart';
import 'package:dio/dio.dart';

class Api {
  static final dio = Dio(BaseOptions(baseUrl: "https://reqres.in/api/"));

  static Future<HomeState> getUser(String page) async {
    UserRepository userRepository;
    Response response = await dio.get("users?page=$page");
    userRepository = UserRepository.fromJson(response.data);
    HomeState newState = HomeState(userRepository);
    return newState;
  }
}
