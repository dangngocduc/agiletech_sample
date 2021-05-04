import 'package:demo_data/model/user_model.dart';

abstract class UserDataSource {

  Future<List<UserModel>> getUserByPage(int page);

}