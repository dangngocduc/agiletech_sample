import 'package:demo_data/datasource/user_api_service.dart';
import 'package:demo_data/repostitory/user_repository.dart';
import 'package:flutter/material.dart';

import 'application.dart';

void main() {

  UserRepository userRepository = UserRepository(apiService: UserApiService());

  runApp(Application(userRepository));
}
