import 'package:auth_nav/data/model/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_repository.g.dart';

@JsonSerializable()
class UserRepository {
  int page;
  @JsonKey(name: 'per_page')
  int perPage;

  int total;
  @JsonKey(name: 'total_pages')
  int totalPages;

  @JsonKey(defaultValue: [])
  List<User> data;

  UserRepository(this.page, this.perPage, this.total,this.totalPages, this.data);

  factory UserRepository.fromJson(Map<String, dynamic> json) =>
      _$UserRepositoryFromJson(json);

  Map<String, dynamic> toJson() => _$UserRepositoryToJson(this);
}
