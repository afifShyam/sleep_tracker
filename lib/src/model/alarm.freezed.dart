// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alarm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Alarm _$AlarmFromJson(Map<String, dynamic> json) {
  return _Alarm.fromJson(json);
}

/// @nodoc
mixin _$Alarm {
  String? get id => throw _privateConstructorUsedError;
  @TimeOfDayConverter()
  TimeOfDay get bedtime => throw _privateConstructorUsedError;
  @TimeOfDayConverter()
  TimeOfDay get wakeupTime => throw _privateConstructorUsedError;
  bool get enabled => throw _privateConstructorUsedError;
  Map<String, bool> get days => throw _privateConstructorUsedError;
  bool get isExpanded => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlarmCopyWith<Alarm> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlarmCopyWith<$Res> {
  factory $AlarmCopyWith(Alarm value, $Res Function(Alarm) then) =
      _$AlarmCopyWithImpl<$Res, Alarm>;
  @useResult
  $Res call(
      {String? id,
      @TimeOfDayConverter() TimeOfDay bedtime,
      @TimeOfDayConverter() TimeOfDay wakeupTime,
      bool enabled,
      Map<String, bool> days,
      bool isExpanded});
}

/// @nodoc
class _$AlarmCopyWithImpl<$Res, $Val extends Alarm>
    implements $AlarmCopyWith<$Res> {
  _$AlarmCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? bedtime = null,
    Object? wakeupTime = null,
    Object? enabled = null,
    Object? days = null,
    Object? isExpanded = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      bedtime: null == bedtime
          ? _value.bedtime
          : bedtime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      wakeupTime: null == wakeupTime
          ? _value.wakeupTime
          : wakeupTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      enabled: null == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      isExpanded: null == isExpanded
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlarmImplCopyWith<$Res> implements $AlarmCopyWith<$Res> {
  factory _$$AlarmImplCopyWith(
          _$AlarmImpl value, $Res Function(_$AlarmImpl) then) =
      __$$AlarmImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @TimeOfDayConverter() TimeOfDay bedtime,
      @TimeOfDayConverter() TimeOfDay wakeupTime,
      bool enabled,
      Map<String, bool> days,
      bool isExpanded});
}

/// @nodoc
class __$$AlarmImplCopyWithImpl<$Res>
    extends _$AlarmCopyWithImpl<$Res, _$AlarmImpl>
    implements _$$AlarmImplCopyWith<$Res> {
  __$$AlarmImplCopyWithImpl(
      _$AlarmImpl _value, $Res Function(_$AlarmImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? bedtime = null,
    Object? wakeupTime = null,
    Object? enabled = null,
    Object? days = null,
    Object? isExpanded = null,
  }) {
    return _then(_$AlarmImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      bedtime: null == bedtime
          ? _value.bedtime
          : bedtime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      wakeupTime: null == wakeupTime
          ? _value.wakeupTime
          : wakeupTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      enabled: null == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      days: null == days
          ? _value._days
          : days // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      isExpanded: null == isExpanded
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlarmImpl implements _Alarm {
  const _$AlarmImpl(
      {this.id,
      @TimeOfDayConverter() required this.bedtime,
      @TimeOfDayConverter() required this.wakeupTime,
      required this.enabled,
      required final Map<String, bool> days,
      this.isExpanded = false})
      : _days = days;

  factory _$AlarmImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlarmImplFromJson(json);

  @override
  final String? id;
  @override
  @TimeOfDayConverter()
  final TimeOfDay bedtime;
  @override
  @TimeOfDayConverter()
  final TimeOfDay wakeupTime;
  @override
  final bool enabled;
  final Map<String, bool> _days;
  @override
  Map<String, bool> get days {
    if (_days is EqualUnmodifiableMapView) return _days;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_days);
  }

  @override
  @JsonKey()
  final bool isExpanded;

  @override
  String toString() {
    return 'Alarm(id: $id, bedtime: $bedtime, wakeupTime: $wakeupTime, enabled: $enabled, days: $days, isExpanded: $isExpanded)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlarmImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bedtime, bedtime) || other.bedtime == bedtime) &&
            (identical(other.wakeupTime, wakeupTime) ||
                other.wakeupTime == wakeupTime) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            const DeepCollectionEquality().equals(other._days, _days) &&
            (identical(other.isExpanded, isExpanded) ||
                other.isExpanded == isExpanded));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, bedtime, wakeupTime, enabled,
      const DeepCollectionEquality().hash(_days), isExpanded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlarmImplCopyWith<_$AlarmImpl> get copyWith =>
      __$$AlarmImplCopyWithImpl<_$AlarmImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlarmImplToJson(
      this,
    );
  }
}

abstract class _Alarm implements Alarm {
  const factory _Alarm(
      {final String? id,
      @TimeOfDayConverter() required final TimeOfDay bedtime,
      @TimeOfDayConverter() required final TimeOfDay wakeupTime,
      required final bool enabled,
      required final Map<String, bool> days,
      final bool isExpanded}) = _$AlarmImpl;

  factory _Alarm.fromJson(Map<String, dynamic> json) = _$AlarmImpl.fromJson;

  @override
  String? get id;
  @override
  @TimeOfDayConverter()
  TimeOfDay get bedtime;
  @override
  @TimeOfDayConverter()
  TimeOfDay get wakeupTime;
  @override
  bool get enabled;
  @override
  Map<String, bool> get days;
  @override
  bool get isExpanded;
  @override
  @JsonKey(ignore: true)
  _$$AlarmImplCopyWith<_$AlarmImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
