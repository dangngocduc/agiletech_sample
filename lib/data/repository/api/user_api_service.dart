


import 'package:demo_1/data/models/user_model.dart';
import 'package:demo_1/data/models/user_response_model.dart';
import 'package:dio/dio.dart';

class UserApiService {

  late Dio dio;

  UserApiService() {
    dio = Dio(
        BaseOptions(
          baseUrl: 'https://reqres.in/api/'
        )
    );
  }

  Future<List<UserModel>> getUsers() async {
    var response = await dio.get('users');
    return UserResponseModel.fromJson(response.data as Map<String, dynamic>).data;
  }
}