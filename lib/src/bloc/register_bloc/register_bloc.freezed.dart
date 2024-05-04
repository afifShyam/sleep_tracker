// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegisterState _$RegisterStateFromJson(Map<String, dynamic> json) {
  return _RegisterState.fromJson(json);
}

/// @nodoc
mixin _$RegisterState {
  RegisterStatus get registerStatus => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  UserModel get user => throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: _fromJsonDocumentReference, toJson: _toJsonDocumentReference)
  DocumentReference<Object?>? get newData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res, RegisterState>;
  @useResult
  $Res call(
      {RegisterStatus registerStatus,
      String error,
      UserModel user,
      @JsonKey(
          fromJson: _fromJsonDocumentReference,
          toJson: _toJsonDocumentReference)
      DocumentReference<Object?>? newData});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res, $Val extends RegisterState>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registerStatus = null,
    Object? error = null,
    Object? user = null,
    Object? newData = freezed,
  }) {
    return _then(_value.copyWith(
      registerStatus: null == registerStatus
          ? _value.registerStatus
          : registerStatus // ignore: cast_nullable_to_non_nullable
              as RegisterStatus,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      newData: freezed == newData
          ? _value.newData
          : newData // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegisterStateImplCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$RegisterStateImplCopyWith(
          _$RegisterStateImpl value, $Res Function(_$RegisterStateImpl) then) =
      __$$RegisterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RegisterStatus registerStatus,
      String error,
      UserModel user,
      @JsonKey(
          fromJson: _fromJsonDocumentReference,
          toJson: _toJsonDocumentReference)
      DocumentReference<Object?>? newData});

  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$RegisterStateImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$RegisterStateImpl>
    implements _$$RegisterStateImplCopyWith<$Res> {
  __$$RegisterStateImplCopyWithImpl(
      _$RegisterStateImpl _value, $Res Function(_$RegisterStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registerStatus = null,
    Object? error = null,
    Object? user = null,
    Object? newData = freezed,
  }) {
    return _then(_$RegisterStateImpl(
      registerStatus: null == registerStatus
          ? _value.registerStatus
          : registerStatus // ignore: cast_nullable_to_non_nullable
              as RegisterStatus,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      newData: freezed == newData
          ? _value.newData
          : newData // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterStateImpl extends _RegisterState {
  _$RegisterStateImpl(
      {required this.registerStatus,
      required this.error,
      required this.user,
      @JsonKey(
          fromJson: _fromJsonDocumentReference,
          toJson: _toJsonDocumentReference)
      this.newData})
      : super._();

  factory _$RegisterStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterStateImplFromJson(json);

  @override
  final RegisterStatus registerStatus;
  @override
  final String error;
  @override
  final UserModel user;
  @override
  @JsonKey(
      fromJson: _fromJsonDocumentReference, toJson: _toJsonDocumentReference)
  final DocumentReference<Object?>? newData;

  @override
  String toString() {
    return 'RegisterState(registerStatus: $registerStatus, error: $error, user: $user, newData: $newData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterStateImpl &&
            (identical(other.registerStatus, registerStatus) ||
                other.registerStatus == registerStatus) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.newData, newData) || other.newData == newData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, registerStatus, error, user, newData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterStateImplCopyWith<_$RegisterStateImpl> get copyWith =>
      __$$RegisterStateImplCopyWithImpl<_$RegisterStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterStateImplToJson(
      this,
    );
  }
}

abstract class _RegisterState extends RegisterState {
  factory _RegisterState(
      {required final RegisterStatus registerStatus,
      required final String error,
      required final UserModel user,
      @JsonKey(
          fromJson: _fromJsonDocumentReference,
          toJson: _toJsonDocumentReference)
      final DocumentReference<Object?>? newData}) = _$RegisterStateImpl;
  _RegisterState._() : super._();

  factory _RegisterState.fromJson(Map<String, dynamic> json) =
      _$RegisterStateImpl.fromJson;

  @override
  RegisterStatus get registerStatus;
  @override
  String get error;
  @override
  UserModel get user;
  @override
  @JsonKey(
      fromJson: _fromJsonDocumentReference, toJson: _toJsonDocumentReference)
  DocumentReference<Object?>? get newData;
  @override
  @JsonKey(ignore: true)
  _$$RegisterStateImplCopyWith<_$RegisterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
