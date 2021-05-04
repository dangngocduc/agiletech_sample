import 'package:demo_data/datasource/user_api_service.dart';
import 'package:demo_data/datasource/user_data_source.dart';
import 'package:demo_data/model/user_model.dart';

class UserRepository implements UserDataSource{

  final UserApiService apiService;

  UserRepository({required this.apiService});

  @override
  Future<List<UserModel>> getUserByPage(int page) {
    return apiService.getUserByPage(page);
  }

}