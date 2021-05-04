// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'top_user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TopUserStateTearOff {
  const _$TopUserStateTearOff();

  TopUserStateData call(List<UserModel> user) {
    return TopUserStateData(
      user,
    );
  }

  TopUserStateLoading loading() {
    return const TopUserStateLoading();
  }

  TopUserStateError error(dynamic error) {
    return TopUserStateError(
      error,
    );
  }
}

/// @nodoc
const $TopUserState = _$TopUserStateTearOff();

/// @nodoc
mixin _$TopUserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<UserModel> user) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<UserModel> user)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(TopUserStateData value) $default, {
    required TResult Function(TopUserStateLoading value) loading,
    required TResult Function(TopUserStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(TopUserStateData value)? $default, {
    TResult Function(TopUserStateLoading value)? loading,
    TResult Function(TopUserStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopUserStateCopyWith<$Res> {
  factory $TopUserStateCopyWith(
          TopUserState value, $Res Function(TopUserState) then) =
      _$TopUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TopUserStateCopyWithImpl<$Res> implements $TopUserStateCopyWith<$Res> {
  _$TopUserStateCopyWithImpl(this._value, this._then);

  final TopUserState _value;
  // ignore: unused_field
  final $Res Function(TopUserState) _then;
}

/// @nodoc
abstract class $TopUserStateDataCopyWith<$Res> {
  factory $TopUserStateDataCopyWith(
          TopUserStateData value, $Res Function(TopUserStateData) then) =
      _$TopUserStateDataCopyWithImpl<$Res>;
  $Res call({List<UserModel> user});
}

/// @nodoc
class _$TopUserStateDataCopyWithImpl<$Res>
    extends _$TopUserStateCopyWithImpl<$Res>
    implements $TopUserStateDataCopyWith<$Res> {
  _$TopUserStateDataCopyWithImpl(
      TopUserStateData _value, $Res Function(TopUserStateData) _then)
      : super(_value, (v) => _then(v as TopUserStateData));

  @override
  TopUserStateData get _value => super._value as TopUserStateData;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(TopUserStateData(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
    ));
  }
}

/// @nodoc

class _$TopUserStateData implements TopUserStateData {
  const _$TopUserStateData(this.user);

  @override
  final List<UserModel> user;

  @override
  String toString() {
    return 'TopUserState(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TopUserStateData &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $TopUserStateDataCopyWith<TopUserStateData> get copyWith =>
      _$TopUserStateDataCopyWithImpl<TopUserStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<UserModel> user) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return $default(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<UserModel> user)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(TopUserStateData value) $default, {
    required TResult Function(TopUserStateLoading value) loading,
    required TResult Function(TopUserStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(TopUserStateData value)? $default, {
    TResult Function(TopUserStateLoading value)? loading,
    TResult Function(TopUserStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class TopUserStateData implements TopUserState {
  const factory TopUserStateData(List<UserModel> user) = _$TopUserStateData;

  List<UserModel> get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopUserStateDataCopyWith<TopUserStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopUserStateLoadingCopyWith<$Res> {
  factory $TopUserStateLoadingCopyWith(
          TopUserStateLoading value, $Res Function(TopUserStateLoading) then) =
      _$TopUserStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$TopUserStateLoadingCopyWithImpl<$Res>
    extends _$TopUserStateCopyWithImpl<$Res>
    implements $TopUserStateLoadingCopyWith<$Res> {
  _$TopUserStateLoadingCopyWithImpl(
      TopUserStateLoading _value, $Res Function(TopUserStateLoading) _then)
      : super(_value, (v) => _then(v as TopUserStateLoading));

  @override
  TopUserStateLoading get _value => super._value as TopUserStateLoading;
}

/// @nodoc

class _$TopUserStateLoading implements TopUserStateLoading {
  const _$TopUserStateLoading();

  @override
  String toString() {
    return 'TopUserState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TopUserStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<UserModel> user) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<UserModel> user)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(TopUserStateData value) $default, {
    required TResult Function(TopUserStateLoading value) loading,
    required TResult Function(TopUserStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(TopUserStateData value)? $default, {
    TResult Function(TopUserStateLoading value)? loading,
    TResult Function(TopUserStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TopUserStateLoading implements TopUserState {
  const factory TopUserStateLoading() = _$TopUserStateLoading;
}

/// @nodoc
abstract class $TopUserStateErrorCopyWith<$Res> {
  factory $TopUserStateErrorCopyWith(
          TopUserStateError value, $Res Function(TopUserStateError) then) =
      _$TopUserStateErrorCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

/// @nodoc
class _$TopUserStateErrorCopyWithImpl<$Res>
    extends _$TopUserStateCopyWithImpl<$Res>
    implements $TopUserStateErrorCopyWith<$Res> {
  _$TopUserStateErrorCopyWithImpl(
      TopUserStateError _value, $Res Function(TopUserStateError) _then)
      : super(_value, (v) => _then(v as TopUserStateError));

  @override
  TopUserStateError get _value => super._value as TopUserStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(TopUserStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$TopUserStateError implements TopUserStateError {
  const _$TopUserStateError(this.error);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'TopUserState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TopUserStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $TopUserStateErrorCopyWith<TopUserStateError> get copyWith =>
      _$TopUserStateErrorCopyWithImpl<TopUserStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<UserModel> user) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<UserModel> user)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(TopUserStateData value) $default, {
    required TResult Function(TopUserStateLoading value) loading,
    required TResult Function(TopUserStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(TopUserStateData value)? $default, {
    TResult Function(TopUserStateLoading value)? loading,
    TResult Function(TopUserStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TopUserStateError implements TopUserState {
  const factory TopUserStateError(dynamic error) = _$TopUserStateError;

  dynamic get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopUserStateErrorCopyWith<TopUserStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
