import 'package:json_annotation/json_annotation.dart';

part 'base_list_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class BaseListResponse<T> {
  int page;

  @JsonKey(name: 'per_page')
  int perPage;

  int total;
  @JsonKey(name: 'total_pages')
  int totalPages;

  @JsonKey(defaultValue: [])
  List<T> data;

  BaseListResponse(
      this.page, this.perPage, this.total, this.totalPages, this.data);

  factory BaseListResponse.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$BaseListResponseFromJson(json, fromJsonT);
}
