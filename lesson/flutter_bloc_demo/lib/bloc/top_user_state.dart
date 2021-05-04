import 'package:demo_data/model/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_user_state.freezed.dart';

@freezed
abstract class TopUserState with _$TopUserState {

  const factory TopUserState(List<UserModel> user) = TopUserStateData;

  const factory TopUserState.loading() = TopUserStateLoading;

  const factory TopUserState.error(dynamic error) = TopUserStateError;
}
