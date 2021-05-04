import 'package:demo_data/model/response/base_list_response.dart';
import 'package:demo_data/model/user_model.dart';
import 'package:dio/dio.dart';

import 'user_data_source.dart';

class UserApiService implements UserDataSource{
  late Dio dio =  Dio(BaseOptions(baseUrl: "https://reqres.in/api/"));

  UserApiService();

  @override
  Future<List<UserModel>> getUserByPage(int page) async {
    Response response = await dio.get("users?page=$page");
    var userRepository = BaseListResponse.fromJson(response.data, (Object? json) {
      return UserModel.fromJson(json as Map<String, dynamic>);
    } );
    return userRepository.data;
  }

}