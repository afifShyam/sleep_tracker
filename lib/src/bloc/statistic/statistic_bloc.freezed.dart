// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'statistic_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StatisticState _$StatisticStateFromJson(Map<String, dynamic> json) {
  return _StatisticState.fromJson(json);
}

/// @nodoc
mixin _$StatisticState {
  StaStatus get status => throw _privateConstructorUsedError;
  bool get isWeekly => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatisticStateCopyWith<StatisticState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticStateCopyWith<$Res> {
  factory $StatisticStateCopyWith(
          StatisticState value, $Res Function(StatisticState) then) =
      _$StatisticStateCopyWithImpl<$Res, StatisticState>;
  @useResult
  $Res call({StaStatus status, bool isWeekly});
}

/// @nodoc
class _$StatisticStateCopyWithImpl<$Res, $Val extends StatisticState>
    implements $StatisticStateCopyWith<$Res> {
  _$StatisticStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isWeekly = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StaStatus,
      isWeekly: null == isWeekly
          ? _value.isWeekly
          : isWeekly // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatisticStateImplCopyWith<$Res>
    implements $StatisticStateCopyWith<$Res> {
  factory _$$StatisticStateImplCopyWith(_$StatisticStateImpl value,
          $Res Function(_$StatisticStateImpl) then) =
      __$$StatisticStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StaStatus status, bool isWeekly});
}

/// @nodoc
class __$$StatisticStateImplCopyWithImpl<$Res>
    extends _$StatisticStateCopyWithImpl<$Res, _$StatisticStateImpl>
    implements _$$StatisticStateImplCopyWith<$Res> {
  __$$StatisticStateImplCopyWithImpl(
      _$StatisticStateImpl _value, $Res Function(_$StatisticStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isWeekly = null,
  }) {
    return _then(_$StatisticStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StaStatus,
      isWeekly: null == isWeekly
          ? _value.isWeekly
          : isWeekly // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatisticStateImpl extends _StatisticState {
  _$StatisticStateImpl({this.status = StaStatus.initial, this.isWeekly = false})
      : super._();

  factory _$StatisticStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatisticStateImplFromJson(json);

  @override
  @JsonKey()
  final StaStatus status;
  @override
  @JsonKey()
  final bool isWeekly;

  @override
  String toString() {
    return 'StatisticState(status: $status, isWeekly: $isWeekly)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatisticStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isWeekly, isWeekly) ||
                other.isWeekly == isWeekly));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, isWeekly);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatisticStateImplCopyWith<_$StatisticStateImpl> get copyWith =>
      __$$StatisticStateImplCopyWithImpl<_$StatisticStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatisticStateImplToJson(
      this,
    );
  }
}

abstract class _StatisticState extends StatisticState {
  factory _StatisticState({final StaStatus status, final bool isWeekly}) =
      _$StatisticStateImpl;
  _StatisticState._() : super._();

  factory _StatisticState.fromJson(Map<String, dynamic> json) =
      _$StatisticStateImpl.fromJson;

  @override
  StaStatus get status;
  @override
  bool get isWeekly;
  @override
  @JsonKey(ignore: true)
  _$$StatisticStateImplCopyWith<_$StatisticStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StatisticEvent {
  bool get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool value) setIsWeekly,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool value)? setIsWeekly,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool value)? setIsWeekly,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetIsWeekly value) setIsWeekly,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetIsWeekly value)? setIsWeekly,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetIsWeekly value)? setIsWeekly,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StatisticEventCopyWith<StatisticEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticEventCopyWith<$Res> {
  factory $StatisticEventCopyWith(
          StatisticEvent value, $Res Function(StatisticEvent) then) =
      _$StatisticEventCopyWithImpl<$Res, StatisticEvent>;
  @useResult
  $Res call({bool value});
}

/// @nodoc
class _$StatisticEventCopyWithImpl<$Res, $Val extends StatisticEvent>
    implements $StatisticEventCopyWith<$Res> {
  _$StatisticEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetIsWeeklyImplCopyWith<$Res>
    implements $StatisticEventCopyWith<$Res> {
  factory _$$SetIsWeeklyImplCopyWith(
          _$SetIsWeeklyImpl value, $Res Function(_$SetIsWeeklyImpl) then) =
      __$$SetIsWeeklyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool value});
}

/// @nodoc
class __$$SetIsWeeklyImplCopyWithImpl<$Res>
    extends _$StatisticEventCopyWithImpl<$Res, _$SetIsWeeklyImpl>
    implements _$$SetIsWeeklyImplCopyWith<$Res> {
  __$$SetIsWeeklyImplCopyWithImpl(
      _$SetIsWeeklyImpl _value, $Res Function(_$SetIsWeeklyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$SetIsWeeklyImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SetIsWeeklyImpl implements SetIsWeekly {
  const _$SetIsWeeklyImpl(this.value);

  @override
  final bool value;

  @override
  String toString() {
    return 'StatisticEvent.setIsWeekly(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetIsWeeklyImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetIsWeeklyImplCopyWith<_$SetIsWeeklyImpl> get copyWith =>
      __$$SetIsWeeklyImplCopyWithImpl<_$SetIsWeeklyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool value) setIsWeekly,
  }) {
    return setIsWeekly(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool value)? setIsWeekly,
  }) {
    return setIsWeekly?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool value)? setIsWeekly,
    required TResult orElse(),
  }) {
    if (setIsWeekly != null) {
      return setIsWeekly(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetIsWeekly value) setIsWeekly,
  }) {
    return setIsWeekly(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetIsWeekly value)? setIsWeekly,
  }) {
    return setIsWeekly?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetIsWeekly value)? setIsWeekly,
    required TResult orElse(),
  }) {
    if (setIsWeekly != null) {
      return setIsWeekly(this);
    }
    return orElse();
  }
}

abstract class SetIsWeekly implements StatisticEvent {
  const factory SetIsWeekly(final bool value) = _$SetIsWeeklyImpl;

  @override
  bool get value;
  @override
  @JsonKey(ignore: true)
  _$$SetIsWeeklyImplCopyWith<_$SetIsWeeklyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
