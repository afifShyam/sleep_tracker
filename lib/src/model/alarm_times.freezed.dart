// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alarm_times.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AlarmTimes _$AlarmTimesFromJson(Map<String, dynamic> json) {
  return _AlarmTimes.fromJson(json);
}

/// @nodoc
mixin _$AlarmTimes {
  String get day => throw _privateConstructorUsedError;
  String get bedtime => throw _privateConstructorUsedError;
  @JsonKey(name: 'wakeup_time')
  String get wakeupTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlarmTimesCopyWith<AlarmTimes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlarmTimesCopyWith<$Res> {
  factory $AlarmTimesCopyWith(
          AlarmTimes value, $Res Function(AlarmTimes) then) =
      _$AlarmTimesCopyWithImpl<$Res, AlarmTimes>;
  @useResult
  $Res call(
      {String day,
      String bedtime,
      @JsonKey(name: 'wakeup_time') String wakeupTime});
}

/// @nodoc
class _$AlarmTimesCopyWithImpl<$Res, $Val extends AlarmTimes>
    implements $AlarmTimesCopyWith<$Res> {
  _$AlarmTimesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? bedtime = null,
    Object? wakeupTime = null,
  }) {
    return _then(_value.copyWith(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      bedtime: null == bedtime
          ? _value.bedtime
          : bedtime // ignore: cast_nullable_to_non_nullable
              as String,
      wakeupTime: null == wakeupTime
          ? _value.wakeupTime
          : wakeupTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlarmTimesImplCopyWith<$Res>
    implements $AlarmTimesCopyWith<$Res> {
  factory _$$AlarmTimesImplCopyWith(
          _$AlarmTimesImpl value, $Res Function(_$AlarmTimesImpl) then) =
      __$$AlarmTimesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String day,
      String bedtime,
      @JsonKey(name: 'wakeup_time') String wakeupTime});
}

/// @nodoc
class __$$AlarmTimesImplCopyWithImpl<$Res>
    extends _$AlarmTimesCopyWithImpl<$Res, _$AlarmTimesImpl>
    implements _$$AlarmTimesImplCopyWith<$Res> {
  __$$AlarmTimesImplCopyWithImpl(
      _$AlarmTimesImpl _value, $Res Function(_$AlarmTimesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? bedtime = null,
    Object? wakeupTime = null,
  }) {
    return _then(_$AlarmTimesImpl(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      bedtime: null == bedtime
          ? _value.bedtime
          : bedtime // ignore: cast_nullable_to_non_nullable
              as String,
      wakeupTime: null == wakeupTime
          ? _value.wakeupTime
          : wakeupTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlarmTimesImpl implements _AlarmTimes {
  _$AlarmTimesImpl(
      {required this.day,
      required this.bedtime,
      @JsonKey(name: 'wakeup_time') required this.wakeupTime});

  factory _$AlarmTimesImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlarmTimesImplFromJson(json);

  @override
  final String day;
  @override
  final String bedtime;
  @override
  @JsonKey(name: 'wakeup_time')
  final String wakeupTime;

  @override
  String toString() {
    return 'AlarmTimes(day: $day, bedtime: $bedtime, wakeupTime: $wakeupTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlarmTimesImpl &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.bedtime, bedtime) || other.bedtime == bedtime) &&
            (identical(other.wakeupTime, wakeupTime) ||
                other.wakeupTime == wakeupTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, day, bedtime, wakeupTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlarmTimesImplCopyWith<_$AlarmTimesImpl> get copyWith =>
      __$$AlarmTimesImplCopyWithImpl<_$AlarmTimesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlarmTimesImplToJson(
      this,
    );
  }
}

abstract class _AlarmTimes implements AlarmTimes {
  factory _AlarmTimes(
          {required final String day,
          required final String bedtime,
          @JsonKey(name: 'wakeup_time') required final String wakeupTime}) =
      _$AlarmTimesImpl;

  factory _AlarmTimes.fromJson(Map<String, dynamic> json) =
      _$AlarmTimesImpl.fromJson;

  @override
  String get day;
  @override
  String get bedtime;
  @override
  @JsonKey(name: 'wakeup_time')
  String get wakeupTime;
  @override
  @JsonKey(ignore: true)
  _$$AlarmTimesImplCopyWith<_$AlarmTimesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
