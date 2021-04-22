import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {

  int id;
  @JsonKey(defaultValue: '')
  String email;

  @JsonKey(defaultValue: '', name: 'first_name')
  String firstName;

  @JsonKey(name: 'last_name', defaultValue: '')
  String lastName;

  @JsonKey(defaultValue: '')
  String avatar;

  UserModel(this.id, this.email, this.firstName, this.lastName, this.avatar);

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
