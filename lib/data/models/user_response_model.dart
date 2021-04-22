import 'dart:convert';

import 'package:demo_1/data/models/user_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_response_model.g.dart';

@JsonSerializable()
class UserResponseModel {
  int page;
  @JsonKey(name: 'per_page')
  int perPage;

  int total;

  @JsonKey(defaultValue: [])
  List<UserModel> data;

  UserResponseModel(this.page, this.perPage, this.total, this.data);

  factory UserResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UserResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserResponseModelToJson(this);
}
