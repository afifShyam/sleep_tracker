// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_alarm_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SetAlarmEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String time) setBedtime,
    required TResult Function(String time) setWakeUp,
    required TResult Function() removeWakeUp,
    required TResult Function() removeBedtime,
    required TResult Function(Alarm alarm) addAlarm,
    required TResult Function(Alarm alarm) updateAlarm,
    required TResult Function(Alarm alarm) removeAlarm,
    required TResult Function(List<Alarm> alarms) updateAllAlarms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String time)? setBedtime,
    TResult? Function(String time)? setWakeUp,
    TResult? Function()? removeWakeUp,
    TResult? Function()? removeBedtime,
    TResult? Function(Alarm alarm)? addAlarm,
    TResult? Function(Alarm alarm)? updateAlarm,
    TResult? Function(Alarm alarm)? removeAlarm,
    TResult? Function(List<Alarm> alarms)? updateAllAlarms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String time)? setBedtime,
    TResult Function(String time)? setWakeUp,
    TResult Function()? removeWakeUp,
    TResult Function()? removeBedtime,
    TResult Function(Alarm alarm)? addAlarm,
    TResult Function(Alarm alarm)? updateAlarm,
    TResult Function(Alarm alarm)? removeAlarm,
    TResult Function(List<Alarm> alarms)? updateAllAlarms,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetBedtime value) setBedtime,
    required TResult Function(SetWakeUp value) setWakeUp,
    required TResult Function(RemoveWakeUp value) removeWakeUp,
    required TResult Function(RemoveBedtime value) removeBedtime,
    required TResult Function(AddAlarm value) addAlarm,
    required TResult Function(UpdateAlarm value) updateAlarm,
    required TResult Function(RemoveAlarm value) removeAlarm,
    required TResult Function(UpdateAllAlarms value) updateAllAlarms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetBedtime value)? setBedtime,
    TResult? Function(SetWakeUp value)? setWakeUp,
    TResult? Function(RemoveWakeUp value)? removeWakeUp,
    TResult? Function(RemoveBedtime value)? removeBedtime,
    TResult? Function(AddAlarm value)? addAlarm,
    TResult? Function(UpdateAlarm value)? updateAlarm,
    TResult? Function(RemoveAlarm value)? removeAlarm,
    TResult? Function(UpdateAllAlarms value)? updateAllAlarms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetBedtime value)? setBedtime,
    TResult Function(SetWakeUp value)? setWakeUp,
    TResult Function(RemoveWakeUp value)? removeWakeUp,
    TResult Function(RemoveBedtime value)? removeBedtime,
    TResult Function(AddAlarm value)? addAlarm,
    TResult Function(UpdateAlarm value)? updateAlarm,
    TResult Function(RemoveAlarm value)? removeAlarm,
    TResult Function(UpdateAllAlarms value)? updateAllAlarms,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetAlarmEventCopyWith<$Res> {
  factory $SetAlarmEventCopyWith(
          SetAlarmEvent value, $Res Function(SetAlarmEvent) then) =
      _$SetAlarmEventCopyWithImpl<$Res, SetAlarmEvent>;
}

/// @nodoc
class _$SetAlarmEventCopyWithImpl<$Res, $Val extends SetAlarmEvent>
    implements $SetAlarmEventCopyWith<$Res> {
  _$SetAlarmEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SetBedtimeImplCopyWith<$Res> {
  factory _$$SetBedtimeImplCopyWith(
          _$SetBedtimeImpl value, $Res Function(_$SetBedtimeImpl) then) =
      __$$SetBedtimeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String time});
}

/// @nodoc
class __$$SetBedtimeImplCopyWithImpl<$Res>
    extends _$SetAlarmEventCopyWithImpl<$Res, _$SetBedtimeImpl>
    implements _$$SetBedtimeImplCopyWith<$Res> {
  __$$SetBedtimeImplCopyWithImpl(
      _$SetBedtimeImpl _value, $Res Function(_$SetBedtimeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
  }) {
    return _then(_$SetBedtimeImpl(
      null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetBedtimeImpl implements SetBedtime {
  const _$SetBedtimeImpl(this.time);

  @override
  final String time;

  @override
  String toString() {
    return 'SetAlarmEvent.setBedtime(time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetBedtimeImpl &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(runtimeType, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetBedtimeImplCopyWith<_$SetBedtimeImpl> get copyWith =>
      __$$SetBedtimeImplCopyWithImpl<_$SetBedtimeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String time) setBedtime,
    required TResult Function(String time) setWakeUp,
    required TResult Function() removeWakeUp,
    required TResult Function() removeBedtime,
    required TResult Function(Alarm alarm) addAlarm,
    required TResult Function(Alarm alarm) updateAlarm,
    required TResult Function(Alarm alarm) removeAlarm,
    required TResult Function(List<Alarm> alarms) updateAllAlarms,
  }) {
    return setBedtime(time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String time)? setBedtime,
    TResult? Function(String time)? setWakeUp,
    TResult? Function()? removeWakeUp,
    TResult? Function()? removeBedtime,
    TResult? Function(Alarm alarm)? addAlarm,
    TResult? Function(Alarm alarm)? updateAlarm,
    TResult? Function(Alarm alarm)? removeAlarm,
    TResult? Function(List<Alarm> alarms)? updateAllAlarms,
  }) {
    return setBedtime?.call(time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String time)? setBedtime,
    TResult Function(String time)? setWakeUp,
    TResult Function()? removeWakeUp,
    TResult Function()? removeBedtime,
    TResult Function(Alarm alarm)? addAlarm,
    TResult Function(Alarm alarm)? updateAlarm,
    TResult Function(Alarm alarm)? removeAlarm,
    TResult Function(List<Alarm> alarms)? updateAllAlarms,
    required TResult orElse(),
  }) {
    if (setBedtime != null) {
      return setBedtime(time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetBedtime value) setBedtime,
    required TResult Function(SetWakeUp value) setWakeUp,
    required TResult Function(RemoveWakeUp value) removeWakeUp,
    required TResult Function(RemoveBedtime value) removeBedtime,
    required TResult Function(AddAlarm value) addAlarm,
    required TResult Function(UpdateAlarm value) updateAlarm,
    required TResult Function(RemoveAlarm value) removeAlarm,
    required TResult Function(UpdateAllAlarms value) updateAllAlarms,
  }) {
    return setBedtime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetBedtime value)? setBedtime,
    TResult? Function(SetWakeUp value)? setWakeUp,
    TResult? Function(RemoveWakeUp value)? removeWakeUp,
    TResult? Function(RemoveBedtime value)? removeBedtime,
    TResult? Function(AddAlarm value)? addAlarm,
    TResult? Function(UpdateAlarm value)? updateAlarm,
    TResult? Function(RemoveAlarm value)? removeAlarm,
    TResult? Function(UpdateAllAlarms value)? updateAllAlarms,
  }) {
    return setBedtime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetBedtime value)? setBedtime,
    TResult Function(SetWakeUp value)? setWakeUp,
    TResult Function(RemoveWakeUp value)? removeWakeUp,
    TResult Function(RemoveBedtime value)? removeBedtime,
    TResult Function(AddAlarm value)? addAlarm,
    TResult Function(UpdateAlarm value)? updateAlarm,
    TResult Function(RemoveAlarm value)? removeAlarm,
    TResult Function(UpdateAllAlarms value)? updateAllAlarms,
    required TResult orElse(),
  }) {
    if (setBedtime != null) {
      return setBedtime(this);
    }
    return orElse();
  }
}

abstract class SetBedtime implements SetAlarmEvent {
  const factory SetBedtime(final String time) = _$SetBedtimeImpl;

  String get time;
  @JsonKey(ignore: true)
  _$$SetBedtimeImplCopyWith<_$SetBedtimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetWakeUpImplCopyWith<$Res> {
  factory _$$SetWakeUpImplCopyWith(
          _$SetWakeUpImpl value, $Res Function(_$SetWakeUpImpl) then) =
      __$$SetWakeUpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String time});
}

/// @nodoc
class __$$SetWakeUpImplCopyWithImpl<$Res>
    extends _$SetAlarmEventCopyWithImpl<$Res, _$SetWakeUpImpl>
    implements _$$SetWakeUpImplCopyWith<$Res> {
  __$$SetWakeUpImplCopyWithImpl(
      _$SetWakeUpImpl _value, $Res Function(_$SetWakeUpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
  }) {
    return _then(_$SetWakeUpImpl(
      null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetWakeUpImpl implements SetWakeUp {
  const _$SetWakeUpImpl(this.time);

  @override
  final String time;

  @override
  String toString() {
    return 'SetAlarmEvent.setWakeUp(time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetWakeUpImpl &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(runtimeType, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetWakeUpImplCopyWith<_$SetWakeUpImpl> get copyWith =>
      __$$SetWakeUpImplCopyWithImpl<_$SetWakeUpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String time) setBedtime,
    required TResult Function(String time) setWakeUp,
    required TResult Function() removeWakeUp,
    required TResult Function() removeBedtime,
    required TResult Function(Alarm alarm) addAlarm,
    required TResult Function(Alarm alarm) updateAlarm,
    required TResult Function(Alarm alarm) removeAlarm,
    required TResult Function(List<Alarm> alarms) updateAllAlarms,
  }) {
    return setWakeUp(time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String time)? setBedtime,
    TResult? Function(String time)? setWakeUp,
    TResult? Function()? removeWakeUp,
    TResult? Function()? removeBedtime,
    TResult? Function(Alarm alarm)? addAlarm,
    TResult? Function(Alarm alarm)? updateAlarm,
    TResult? Function(Alarm alarm)? removeAlarm,
    TResult? Function(List<Alarm> alarms)? updateAllAlarms,
  }) {
    return setWakeUp?.call(time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String time)? setBedtime,
    TResult Function(String time)? setWakeUp,
    TResult Function()? removeWakeUp,
    TResult Function()? removeBedtime,
    TResult Function(Alarm alarm)? addAlarm,
    TResult Function(Alarm alarm)? updateAlarm,
    TResult Function(Alarm alarm)? removeAlarm,
    TResult Function(List<Alarm> alarms)? updateAllAlarms,
    required TResult orElse(),
  }) {
    if (setWakeUp != null) {
      return setWakeUp(time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetBedtime value) setBedtime,
    required TResult Function(SetWakeUp value) setWakeUp,
    required TResult Function(RemoveWakeUp value) removeWakeUp,
    required TResult Function(RemoveBedtime value) removeBedtime,
    required TResult Function(AddAlarm value) addAlarm,
    required TResult Function(UpdateAlarm value) updateAlarm,
    required TResult Function(RemoveAlarm value) removeAlarm,
    required TResult Function(UpdateAllAlarms value) updateAllAlarms,
  }) {
    return setWakeUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetBedtime value)? setBedtime,
    TResult? Function(SetWakeUp value)? setWakeUp,
    TResult? Function(RemoveWakeUp value)? removeWakeUp,
    TResult? Function(RemoveBedtime value)? removeBedtime,
    TResult? Function(AddAlarm value)? addAlarm,
    TResult? Function(UpdateAlarm value)? updateAlarm,
    TResult? Function(RemoveAlarm value)? removeAlarm,
    TResult? Function(UpdateAllAlarms value)? updateAllAlarms,
  }) {
    return setWakeUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetBedtime value)? setBedtime,
    TResult Function(SetWakeUp value)? setWakeUp,
    TResult Function(RemoveWakeUp value)? removeWakeUp,
    TResult Function(RemoveBedtime value)? removeBedtime,
    TResult Function(AddAlarm value)? addAlarm,
    TResult Function(UpdateAlarm value)? updateAlarm,
    TResult Function(RemoveAlarm value)? removeAlarm,
    TResult Function(UpdateAllAlarms value)? updateAllAlarms,
    required TResult orElse(),
  }) {
    if (setWakeUp != null) {
      return setWakeUp(this);
    }
    return orElse();
  }
}

abstract class SetWakeUp implements SetAlarmEvent {
  const factory SetWakeUp(final String time) = _$SetWakeUpImpl;

  String get time;
  @JsonKey(ignore: true)
  _$$SetWakeUpImplCopyWith<_$SetWakeUpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveWakeUpImplCopyWith<$Res> {
  factory _$$RemoveWakeUpImplCopyWith(
          _$RemoveWakeUpImpl value, $Res Function(_$RemoveWakeUpImpl) then) =
      __$$RemoveWakeUpImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoveWakeUpImplCopyWithImpl<$Res>
    extends _$SetAlarmEventCopyWithImpl<$Res, _$RemoveWakeUpImpl>
    implements _$$RemoveWakeUpImplCopyWith<$Res> {
  __$$RemoveWakeUpImplCopyWithImpl(
      _$RemoveWakeUpImpl _value, $Res Function(_$RemoveWakeUpImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RemoveWakeUpImpl implements RemoveWakeUp {
  const _$RemoveWakeUpImpl();

  @override
  String toString() {
    return 'SetAlarmEvent.removeWakeUp()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RemoveWakeUpImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String time) setBedtime,
    required TResult Function(String time) setWakeUp,
    required TResult Function() removeWakeUp,
    required TResult Function() removeBedtime,
    required TResult Function(Alarm alarm) addAlarm,
    required TResult Function(Alarm alarm) updateAlarm,
    required TResult Function(Alarm alarm) removeAlarm,
    required TResult Function(List<Alarm> alarms) updateAllAlarms,
  }) {
    return removeWakeUp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String time)? setBedtime,
    TResult? Function(String time)? setWakeUp,
    TResult? Function()? removeWakeUp,
    TResult? Function()? removeBedtime,
    TResult? Function(Alarm alarm)? addAlarm,
    TResult? Function(Alarm alarm)? updateAlarm,
    TResult? Function(Alarm alarm)? removeAlarm,
    TResult? Function(List<Alarm> alarms)? updateAllAlarms,
  }) {
    return removeWakeUp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String time)? setBedtime,
    TResult Function(String time)? setWakeUp,
    TResult Function()? removeWakeUp,
    TResult Function()? removeBedtime,
    TResult Function(Alarm alarm)? addAlarm,
    TResult Function(Alarm alarm)? updateAlarm,
    TResult Function(Alarm alarm)? removeAlarm,
    TResult Function(List<Alarm> alarms)? updateAllAlarms,
    required TResult orElse(),
  }) {
    if (removeWakeUp != null) {
      return removeWakeUp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetBedtime value) setBedtime,
    required TResult Function(SetWakeUp value) setWakeUp,
    required TResult Function(RemoveWakeUp value) removeWakeUp,
    required TResult Function(RemoveBedtime value) removeBedtime,
    required TResult Function(AddAlarm value) addAlarm,
    required TResult Function(UpdateAlarm value) updateAlarm,
    required TResult Function(RemoveAlarm value) removeAlarm,
    required TResult Function(UpdateAllAlarms value) updateAllAlarms,
  }) {
    return removeWakeUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetBedtime value)? setBedtime,
    TResult? Function(SetWakeUp value)? setWakeUp,
    TResult? Function(RemoveWakeUp value)? removeWakeUp,
    TResult? Function(RemoveBedtime value)? removeBedtime,
    TResult? Function(AddAlarm value)? addAlarm,
    TResult? Function(UpdateAlarm value)? updateAlarm,
    TResult? Function(RemoveAlarm value)? removeAlarm,
    TResult? Function(UpdateAllAlarms value)? updateAllAlarms,
  }) {
    return removeWakeUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetBedtime value)? setBedtime,
    TResult Function(SetWakeUp value)? setWakeUp,
    TResult Function(RemoveWakeUp value)? removeWakeUp,
    TResult Function(RemoveBedtime value)? removeBedtime,
    TResult Function(AddAlarm value)? addAlarm,
    TResult Function(UpdateAlarm value)? updateAlarm,
    TResult Function(RemoveAlarm value)? removeAlarm,
    TResult Function(UpdateAllAlarms value)? updateAllAlarms,
    required TResult orElse(),
  }) {
    if (removeWakeUp != null) {
      return removeWakeUp(this);
    }
    return orElse();
  }
}

abstract class RemoveWakeUp implements SetAlarmEvent {
  const factory RemoveWakeUp() = _$RemoveWakeUpImpl;
}

/// @nodoc
abstract class _$$RemoveBedtimeImplCopyWith<$Res> {
  factory _$$RemoveBedtimeImplCopyWith(
          _$RemoveBedtimeImpl value, $Res Function(_$RemoveBedtimeImpl) then) =
      __$$RemoveBedtimeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoveBedtimeImplCopyWithImpl<$Res>
    extends _$SetAlarmEventCopyWithImpl<$Res, _$RemoveBedtimeImpl>
    implements _$$RemoveBedtimeImplCopyWith<$Res> {
  __$$RemoveBedtimeImplCopyWithImpl(
      _$RemoveBedtimeImpl _value, $Res Function(_$RemoveBedtimeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RemoveBedtimeImpl implements RemoveBedtime {
  const _$RemoveBedtimeImpl();

  @override
  String toString() {
    return 'SetAlarmEvent.removeBedtime()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RemoveBedtimeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String time) setBedtime,
    required TResult Function(String time) setWakeUp,
    required TResult Function() removeWakeUp,
    required TResult Function() removeBedtime,
    required TResult Function(Alarm alarm) addAlarm,
    required TResult Function(Alarm alarm) updateAlarm,
    required TResult Function(Alarm alarm) removeAlarm,
    required TResult Function(List<Alarm> alarms) updateAllAlarms,
  }) {
    return removeBedtime();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String time)? setBedtime,
    TResult? Function(String time)? setWakeUp,
    TResult? Function()? removeWakeUp,
    TResult? Function()? removeBedtime,
    TResult? Function(Alarm alarm)? addAlarm,
    TResult? Function(Alarm alarm)? updateAlarm,
    TResult? Function(Alarm alarm)? removeAlarm,
    TResult? Function(List<Alarm> alarms)? updateAllAlarms,
  }) {
    return removeBedtime?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String time)? setBedtime,
    TResult Function(String time)? setWakeUp,
    TResult Function()? removeWakeUp,
    TResult Function()? removeBedtime,
    TResult Function(Alarm alarm)? addAlarm,
    TResult Function(Alarm alarm)? updateAlarm,
    TResult Function(Alarm alarm)? removeAlarm,
    TResult Function(List<Alarm> alarms)? updateAllAlarms,
    required TResult orElse(),
  }) {
    if (removeBedtime != null) {
      return removeBedtime();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetBedtime value) setBedtime,
    required TResult Function(SetWakeUp value) setWakeUp,
    required TResult Function(RemoveWakeUp value) removeWakeUp,
    required TResult Function(RemoveBedtime value) removeBedtime,
    required TResult Function(AddAlarm value) addAlarm,
    required TResult Function(UpdateAlarm value) updateAlarm,
    required TResult Function(RemoveAlarm value) removeAlarm,
    required TResult Function(UpdateAllAlarms value) updateAllAlarms,
  }) {
    return removeBedtime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetBedtime value)? setBedtime,
    TResult? Function(SetWakeUp value)? setWakeUp,
    TResult? Function(RemoveWakeUp value)? removeWakeUp,
    TResult? Function(RemoveBedtime value)? removeBedtime,
    TResult? Function(AddAlarm value)? addAlarm,
    TResult? Function(UpdateAlarm value)? updateAlarm,
    TResult? Function(RemoveAlarm value)? removeAlarm,
    TResult? Function(UpdateAllAlarms value)? updateAllAlarms,
  }) {
    return removeBedtime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetBedtime value)? setBedtime,
    TResult Function(SetWakeUp value)? setWakeUp,
    TResult Function(RemoveWakeUp value)? removeWakeUp,
    TResult Function(RemoveBedtime value)? removeBedtime,
    TResult Function(AddAlarm value)? addAlarm,
    TResult Function(UpdateAlarm value)? updateAlarm,
    TResult Function(RemoveAlarm value)? removeAlarm,
    TResult Function(UpdateAllAlarms value)? updateAllAlarms,
    required TResult orElse(),
  }) {
    if (removeBedtime != null) {
      return removeBedtime(this);
    }
    return orElse();
  }
}

abstract class RemoveBedtime implements SetAlarmEvent {
  const factory RemoveBedtime() = _$RemoveBedtimeImpl;
}

/// @nodoc
abstract class _$$AddAlarmImplCopyWith<$Res> {
  factory _$$AddAlarmImplCopyWith(
          _$AddAlarmImpl value, $Res Function(_$AddAlarmImpl) then) =
      __$$AddAlarmImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Alarm alarm});

  $AlarmCopyWith<$Res> get alarm;
}

/// @nodoc
class __$$AddAlarmImplCopyWithImpl<$Res>
    extends _$SetAlarmEventCopyWithImpl<$Res, _$AddAlarmImpl>
    implements _$$AddAlarmImplCopyWith<$Res> {
  __$$AddAlarmImplCopyWithImpl(
      _$AddAlarmImpl _value, $Res Function(_$AddAlarmImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alarm = null,
  }) {
    return _then(_$AddAlarmImpl(
      null == alarm
          ? _value.alarm
          : alarm // ignore: cast_nullable_to_non_nullable
              as Alarm,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AlarmCopyWith<$Res> get alarm {
    return $AlarmCopyWith<$Res>(_value.alarm, (value) {
      return _then(_value.copyWith(alarm: value));
    });
  }
}

/// @nodoc

class _$AddAlarmImpl implements AddAlarm {
  const _$AddAlarmImpl(this.alarm);

  @override
  final Alarm alarm;

  @override
  String toString() {
    return 'SetAlarmEvent.addAlarm(alarm: $alarm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddAlarmImpl &&
            (identical(other.alarm, alarm) || other.alarm == alarm));
  }

  @override
  int get hashCode => Object.hash(runtimeType, alarm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddAlarmImplCopyWith<_$AddAlarmImpl> get copyWith =>
      __$$AddAlarmImplCopyWithImpl<_$AddAlarmImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String time) setBedtime,
    required TResult Function(String time) setWakeUp,
    required TResult Function() removeWakeUp,
    required TResult Function() removeBedtime,
    required TResult Function(Alarm alarm) addAlarm,
    required TResult Function(Alarm alarm) updateAlarm,
    required TResult Function(Alarm alarm) removeAlarm,
    required TResult Function(List<Alarm> alarms) updateAllAlarms,
  }) {
    return addAlarm(alarm);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String time)? setBedtime,
    TResult? Function(String time)? setWakeUp,
    TResult? Function()? removeWakeUp,
    TResult? Function()? removeBedtime,
    TResult? Function(Alarm alarm)? addAlarm,
    TResult? Function(Alarm alarm)? updateAlarm,
    TResult? Function(Alarm alarm)? removeAlarm,
    TResult? Function(List<Alarm> alarms)? updateAllAlarms,
  }) {
    return addAlarm?.call(alarm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String time)? setBedtime,
    TResult Function(String time)? setWakeUp,
    TResult Function()? removeWakeUp,
    TResult Function()? removeBedtime,
    TResult Function(Alarm alarm)? addAlarm,
    TResult Function(Alarm alarm)? updateAlarm,
    TResult Function(Alarm alarm)? removeAlarm,
    TResult Function(List<Alarm> alarms)? updateAllAlarms,
    required TResult orElse(),
  }) {
    if (addAlarm != null) {
      return addAlarm(alarm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetBedtime value) setBedtime,
    required TResult Function(SetWakeUp value) setWakeUp,
    required TResult Function(RemoveWakeUp value) removeWakeUp,
    required TResult Function(RemoveBedtime value) removeBedtime,
    required TResult Function(AddAlarm value) addAlarm,
    required TResult Function(UpdateAlarm value) updateAlarm,
    required TResult Function(RemoveAlarm value) removeAlarm,
    required TResult Function(UpdateAllAlarms value) updateAllAlarms,
  }) {
    return addAlarm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetBedtime value)? setBedtime,
    TResult? Function(SetWakeUp value)? setWakeUp,
    TResult? Function(RemoveWakeUp value)? removeWakeUp,
    TResult? Function(RemoveBedtime value)? removeBedtime,
    TResult? Function(AddAlarm value)? addAlarm,
    TResult? Function(UpdateAlarm value)? updateAlarm,
    TResult? Function(RemoveAlarm value)? removeAlarm,
    TResult? Function(UpdateAllAlarms value)? updateAllAlarms,
  }) {
    return addAlarm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetBedtime value)? setBedtime,
    TResult Function(SetWakeUp value)? setWakeUp,
    TResult Function(RemoveWakeUp value)? removeWakeUp,
    TResult Function(RemoveBedtime value)? removeBedtime,
    TResult Function(AddAlarm value)? addAlarm,
    TResult Function(UpdateAlarm value)? updateAlarm,
    TResult Function(RemoveAlarm value)? removeAlarm,
    TResult Function(UpdateAllAlarms value)? updateAllAlarms,
    required TResult orElse(),
  }) {
    if (addAlarm != null) {
      return addAlarm(this);
    }
    return orElse();
  }
}

abstract class AddAlarm implements SetAlarmEvent {
  const factory AddAlarm(final Alarm alarm) = _$AddAlarmImpl;

  Alarm get alarm;
  @JsonKey(ignore: true)
  _$$AddAlarmImplCopyWith<_$AddAlarmImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateAlarmImplCopyWith<$Res> {
  factory _$$UpdateAlarmImplCopyWith(
          _$UpdateAlarmImpl value, $Res Function(_$UpdateAlarmImpl) then) =
      __$$UpdateAlarmImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Alarm alarm});

  $AlarmCopyWith<$Res> get alarm;
}

/// @nodoc
class __$$UpdateAlarmImplCopyWithImpl<$Res>
    extends _$SetAlarmEventCopyWithImpl<$Res, _$UpdateAlarmImpl>
    implements _$$UpdateAlarmImplCopyWith<$Res> {
  __$$UpdateAlarmImplCopyWithImpl(
      _$UpdateAlarmImpl _value, $Res Function(_$UpdateAlarmImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alarm = null,
  }) {
    return _then(_$UpdateAlarmImpl(
      null == alarm
          ? _value.alarm
          : alarm // ignore: cast_nullable_to_non_nullable
              as Alarm,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AlarmCopyWith<$Res> get alarm {
    return $AlarmCopyWith<$Res>(_value.alarm, (value) {
      return _then(_value.copyWith(alarm: value));
    });
  }
}

/// @nodoc

class _$UpdateAlarmImpl implements UpdateAlarm {
  const _$UpdateAlarmImpl(this.alarm);

  @override
  final Alarm alarm;

  @override
  String toString() {
    return 'SetAlarmEvent.updateAlarm(alarm: $alarm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAlarmImpl &&
            (identical(other.alarm, alarm) || other.alarm == alarm));
  }

  @override
  int get hashCode => Object.hash(runtimeType, alarm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAlarmImplCopyWith<_$UpdateAlarmImpl> get copyWith =>
      __$$UpdateAlarmImplCopyWithImpl<_$UpdateAlarmImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String time) setBedtime,
    required TResult Function(String time) setWakeUp,
    required TResult Function() removeWakeUp,
    required TResult Function() removeBedtime,
    required TResult Function(Alarm alarm) addAlarm,
    required TResult Function(Alarm alarm) updateAlarm,
    required TResult Function(Alarm alarm) removeAlarm,
    required TResult Function(List<Alarm> alarms) updateAllAlarms,
  }) {
    return updateAlarm(alarm);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String time)? setBedtime,
    TResult? Function(String time)? setWakeUp,
    TResult? Function()? removeWakeUp,
    TResult? Function()? removeBedtime,
    TResult? Function(Alarm alarm)? addAlarm,
    TResult? Function(Alarm alarm)? updateAlarm,
    TResult? Function(Alarm alarm)? removeAlarm,
    TResult? Function(List<Alarm> alarms)? updateAllAlarms,
  }) {
    return updateAlarm?.call(alarm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String time)? setBedtime,
    TResult Function(String time)? setWakeUp,
    TResult Function()? removeWakeUp,
    TResult Function()? removeBedtime,
    TResult Function(Alarm alarm)? addAlarm,
    TResult Function(Alarm alarm)? updateAlarm,
    TResult Function(Alarm alarm)? removeAlarm,
    TResult Function(List<Alarm> alarms)? updateAllAlarms,
    required TResult orElse(),
  }) {
    if (updateAlarm != null) {
      return updateAlarm(alarm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetBedtime value) setBedtime,
    required TResult Function(SetWakeUp value) setWakeUp,
    required TResult Function(RemoveWakeUp value) removeWakeUp,
    required TResult Function(RemoveBedtime value) removeBedtime,
    required TResult Function(AddAlarm value) addAlarm,
    required TResult Function(UpdateAlarm value) updateAlarm,
    required TResult Function(RemoveAlarm value) removeAlarm,
    required TResult Function(UpdateAllAlarms value) updateAllAlarms,
  }) {
    return updateAlarm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetBedtime value)? setBedtime,
    TResult? Function(SetWakeUp value)? setWakeUp,
    TResult? Function(RemoveWakeUp value)? removeWakeUp,
    TResult? Function(RemoveBedtime value)? removeBedtime,
    TResult? Function(AddAlarm value)? addAlarm,
    TResult? Function(UpdateAlarm value)? updateAlarm,
    TResult? Function(RemoveAlarm value)? removeAlarm,
    TResult? Function(UpdateAllAlarms value)? updateAllAlarms,
  }) {
    return updateAlarm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetBedtime value)? setBedtime,
    TResult Function(SetWakeUp value)? setWakeUp,
    TResult Function(RemoveWakeUp value)? removeWakeUp,
    TResult Function(RemoveBedtime value)? removeBedtime,
    TResult Function(AddAlarm value)? addAlarm,
    TResult Function(UpdateAlarm value)? updateAlarm,
    TResult Function(RemoveAlarm value)? removeAlarm,
    TResult Function(UpdateAllAlarms value)? updateAllAlarms,
    required TResult orElse(),
  }) {
    if (updateAlarm != null) {
      return updateAlarm(this);
    }
    return orElse();
  }
}

abstract class UpdateAlarm implements SetAlarmEvent {
  const factory UpdateAlarm(final Alarm alarm) = _$UpdateAlarmImpl;

  Alarm get alarm;
  @JsonKey(ignore: true)
  _$$UpdateAlarmImplCopyWith<_$UpdateAlarmImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveAlarmImplCopyWith<$Res> {
  factory _$$RemoveAlarmImplCopyWith(
          _$RemoveAlarmImpl value, $Res Function(_$RemoveAlarmImpl) then) =
      __$$RemoveAlarmImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Alarm alarm});

  $AlarmCopyWith<$Res> get alarm;
}

/// @nodoc
class __$$RemoveAlarmImplCopyWithImpl<$Res>
    extends _$SetAlarmEventCopyWithImpl<$Res, _$RemoveAlarmImpl>
    implements _$$RemoveAlarmImplCopyWith<$Res> {
  __$$RemoveAlarmImplCopyWithImpl(
      _$RemoveAlarmImpl _value, $Res Function(_$RemoveAlarmImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alarm = null,
  }) {
    return _then(_$RemoveAlarmImpl(
      null == alarm
          ? _value.alarm
          : alarm // ignore: cast_nullable_to_non_nullable
              as Alarm,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AlarmCopyWith<$Res> get alarm {
    return $AlarmCopyWith<$Res>(_value.alarm, (value) {
      return _then(_value.copyWith(alarm: value));
    });
  }
}

/// @nodoc

class _$RemoveAlarmImpl implements RemoveAlarm {
  const _$RemoveAlarmImpl(this.alarm);

  @override
  final Alarm alarm;

  @override
  String toString() {
    return 'SetAlarmEvent.removeAlarm(alarm: $alarm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveAlarmImpl &&
            (identical(other.alarm, alarm) || other.alarm == alarm));
  }

  @override
  int get hashCode => Object.hash(runtimeType, alarm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveAlarmImplCopyWith<_$RemoveAlarmImpl> get copyWith =>
      __$$RemoveAlarmImplCopyWithImpl<_$RemoveAlarmImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String time) setBedtime,
    required TResult Function(String time) setWakeUp,
    required TResult Function() removeWakeUp,
    required TResult Function() removeBedtime,
    required TResult Function(Alarm alarm) addAlarm,
    required TResult Function(Alarm alarm) updateAlarm,
    required TResult Function(Alarm alarm) removeAlarm,
    required TResult Function(List<Alarm> alarms) updateAllAlarms,
  }) {
    return removeAlarm(alarm);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String time)? setBedtime,
    TResult? Function(String time)? setWakeUp,
    TResult? Function()? removeWakeUp,
    TResult? Function()? removeBedtime,
    TResult? Function(Alarm alarm)? addAlarm,
    TResult? Function(Alarm alarm)? updateAlarm,
    TResult? Function(Alarm alarm)? removeAlarm,
    TResult? Function(List<Alarm> alarms)? updateAllAlarms,
  }) {
    return removeAlarm?.call(alarm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String time)? setBedtime,
    TResult Function(String time)? setWakeUp,
    TResult Function()? removeWakeUp,
    TResult Function()? removeBedtime,
    TResult Function(Alarm alarm)? addAlarm,
    TResult Function(Alarm alarm)? updateAlarm,
    TResult Function(Alarm alarm)? removeAlarm,
    TResult Function(List<Alarm> alarms)? updateAllAlarms,
    required TResult orElse(),
  }) {
    if (removeAlarm != null) {
      return removeAlarm(alarm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetBedtime value) setBedtime,
    required TResult Function(SetWakeUp value) setWakeUp,
    required TResult Function(RemoveWakeUp value) removeWakeUp,
    required TResult Function(RemoveBedtime value) removeBedtime,
    required TResult Function(AddAlarm value) addAlarm,
    required TResult Function(UpdateAlarm value) updateAlarm,
    required TResult Function(RemoveAlarm value) removeAlarm,
    required TResult Function(UpdateAllAlarms value) updateAllAlarms,
  }) {
    return removeAlarm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetBedtime value)? setBedtime,
    TResult? Function(SetWakeUp value)? setWakeUp,
    TResult? Function(RemoveWakeUp value)? removeWakeUp,
    TResult? Function(RemoveBedtime value)? removeBedtime,
    TResult? Function(AddAlarm value)? addAlarm,
    TResult? Function(UpdateAlarm value)? updateAlarm,
    TResult? Function(RemoveAlarm value)? removeAlarm,
    TResult? Function(UpdateAllAlarms value)? updateAllAlarms,
  }) {
    return removeAlarm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetBedtime value)? setBedtime,
    TResult Function(SetWakeUp value)? setWakeUp,
    TResult Function(RemoveWakeUp value)? removeWakeUp,
    TResult Function(RemoveBedtime value)? removeBedtime,
    TResult Function(AddAlarm value)? addAlarm,
    TResult Function(UpdateAlarm value)? updateAlarm,
    TResult Function(RemoveAlarm value)? removeAlarm,
    TResult Function(UpdateAllAlarms value)? updateAllAlarms,
    required TResult orElse(),
  }) {
    if (removeAlarm != null) {
      return removeAlarm(this);
    }
    return orElse();
  }
}

abstract class RemoveAlarm implements SetAlarmEvent {
  const factory RemoveAlarm(final Alarm alarm) = _$RemoveAlarmImpl;

  Alarm get alarm;
  @JsonKey(ignore: true)
  _$$RemoveAlarmImplCopyWith<_$RemoveAlarmImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateAllAlarmsImplCopyWith<$Res> {
  factory _$$UpdateAllAlarmsImplCopyWith(_$UpdateAllAlarmsImpl value,
          $Res Function(_$UpdateAllAlarmsImpl) then) =
      __$$UpdateAllAlarmsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Alarm> alarms});
}

/// @nodoc
class __$$UpdateAllAlarmsImplCopyWithImpl<$Res>
    extends _$SetAlarmEventCopyWithImpl<$Res, _$UpdateAllAlarmsImpl>
    implements _$$UpdateAllAlarmsImplCopyWith<$Res> {
  __$$UpdateAllAlarmsImplCopyWithImpl(
      _$UpdateAllAlarmsImpl _value, $Res Function(_$UpdateAllAlarmsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alarms = null,
  }) {
    return _then(_$UpdateAllAlarmsImpl(
      null == alarms
          ? _value._alarms
          : alarms // ignore: cast_nullable_to_non_nullable
              as List<Alarm>,
    ));
  }
}

/// @nodoc

class _$UpdateAllAlarmsImpl implements UpdateAllAlarms {
  const _$UpdateAllAlarmsImpl(final List<Alarm> alarms) : _alarms = alarms;

  final List<Alarm> _alarms;
  @override
  List<Alarm> get alarms {
    if (_alarms is EqualUnmodifiableListView) return _alarms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_alarms);
  }

  @override
  String toString() {
    return 'SetAlarmEvent.updateAllAlarms(alarms: $alarms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAllAlarmsImpl &&
            const DeepCollectionEquality().equals(other._alarms, _alarms));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_alarms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAllAlarmsImplCopyWith<_$UpdateAllAlarmsImpl> get copyWith =>
      __$$UpdateAllAlarmsImplCopyWithImpl<_$UpdateAllAlarmsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String time) setBedtime,
    required TResult Function(String time) setWakeUp,
    required TResult Function() removeWakeUp,
    required TResult Function() removeBedtime,
    required TResult Function(Alarm alarm) addAlarm,
    required TResult Function(Alarm alarm) updateAlarm,
    required TResult Function(Alarm alarm) removeAlarm,
    required TResult Function(List<Alarm> alarms) updateAllAlarms,
  }) {
    return updateAllAlarms(alarms);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String time)? setBedtime,
    TResult? Function(String time)? setWakeUp,
    TResult? Function()? removeWakeUp,
    TResult? Function()? removeBedtime,
    TResult? Function(Alarm alarm)? addAlarm,
    TResult? Function(Alarm alarm)? updateAlarm,
    TResult? Function(Alarm alarm)? removeAlarm,
    TResult? Function(List<Alarm> alarms)? updateAllAlarms,
  }) {
    return updateAllAlarms?.call(alarms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String time)? setBedtime,
    TResult Function(String time)? setWakeUp,
    TResult Function()? removeWakeUp,
    TResult Function()? removeBedtime,
    TResult Function(Alarm alarm)? addAlarm,
    TResult Function(Alarm alarm)? updateAlarm,
    TResult Function(Alarm alarm)? removeAlarm,
    TResult Function(List<Alarm> alarms)? updateAllAlarms,
    required TResult orElse(),
  }) {
    if (updateAllAlarms != null) {
      return updateAllAlarms(alarms);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetBedtime value) setBedtime,
    required TResult Function(SetWakeUp value) setWakeUp,
    required TResult Function(RemoveWakeUp value) removeWakeUp,
    required TResult Function(RemoveBedtime value) removeBedtime,
    required TResult Function(AddAlarm value) addAlarm,
    required TResult Function(UpdateAlarm value) updateAlarm,
    required TResult Function(RemoveAlarm value) removeAlarm,
    required TResult Function(UpdateAllAlarms value) updateAllAlarms,
  }) {
    return updateAllAlarms(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetBedtime value)? setBedtime,
    TResult? Function(SetWakeUp value)? setWakeUp,
    TResult? Function(RemoveWakeUp value)? removeWakeUp,
    TResult? Function(RemoveBedtime value)? removeBedtime,
    TResult? Function(AddAlarm value)? addAlarm,
    TResult? Function(UpdateAlarm value)? updateAlarm,
    TResult? Function(RemoveAlarm value)? removeAlarm,
    TResult? Function(UpdateAllAlarms value)? updateAllAlarms,
  }) {
    return updateAllAlarms?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetBedtime value)? setBedtime,
    TResult Function(SetWakeUp value)? setWakeUp,
    TResult Function(RemoveWakeUp value)? removeWakeUp,
    TResult Function(RemoveBedtime value)? removeBedtime,
    TResult Function(AddAlarm value)? addAlarm,
    TResult Function(UpdateAlarm value)? updateAlarm,
    TResult Function(RemoveAlarm value)? removeAlarm,
    TResult Function(UpdateAllAlarms value)? updateAllAlarms,
    required TResult orElse(),
  }) {
    if (updateAllAlarms != null) {
      return updateAllAlarms(this);
    }
    return orElse();
  }
}

abstract class UpdateAllAlarms implements SetAlarmEvent {
  const factory UpdateAllAlarms(final List<Alarm> alarms) =
      _$UpdateAllAlarmsImpl;

  List<Alarm> get alarms;
  @JsonKey(ignore: true)
  _$$UpdateAllAlarmsImplCopyWith<_$UpdateAllAlarmsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SetAlarmState _$SetAlarmStateFromJson(Map<String, dynamic> json) {
  return _SetAlarmState.fromJson(json);
}

/// @nodoc
mixin _$SetAlarmState {
  String? get bedtime => throw _privateConstructorUsedError;
  String? get wakeupTime => throw _privateConstructorUsedError;
  SetAlarmStatus get setAlarmStatus => throw _privateConstructorUsedError;
  List<Alarm>? get alarms => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetAlarmStateCopyWith<SetAlarmState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetAlarmStateCopyWith<$Res> {
  factory $SetAlarmStateCopyWith(
          SetAlarmState value, $Res Function(SetAlarmState) then) =
      _$SetAlarmStateCopyWithImpl<$Res, SetAlarmState>;
  @useResult
  $Res call(
      {String? bedtime,
      String? wakeupTime,
      SetAlarmStatus setAlarmStatus,
      List<Alarm>? alarms});
}

/// @nodoc
class _$SetAlarmStateCopyWithImpl<$Res, $Val extends SetAlarmState>
    implements $SetAlarmStateCopyWith<$Res> {
  _$SetAlarmStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bedtime = freezed,
    Object? wakeupTime = freezed,
    Object? setAlarmStatus = null,
    Object? alarms = freezed,
  }) {
    return _then(_value.copyWith(
      bedtime: freezed == bedtime
          ? _value.bedtime
          : bedtime // ignore: cast_nullable_to_non_nullable
              as String?,
      wakeupTime: freezed == wakeupTime
          ? _value.wakeupTime
          : wakeupTime // ignore: cast_nullable_to_non_nullable
              as String?,
      setAlarmStatus: null == setAlarmStatus
          ? _value.setAlarmStatus
          : setAlarmStatus // ignore: cast_nullable_to_non_nullable
              as SetAlarmStatus,
      alarms: freezed == alarms
          ? _value.alarms
          : alarms // ignore: cast_nullable_to_non_nullable
              as List<Alarm>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetAlarmStateImplCopyWith<$Res>
    implements $SetAlarmStateCopyWith<$Res> {
  factory _$$SetAlarmStateImplCopyWith(
          _$SetAlarmStateImpl value, $Res Function(_$SetAlarmStateImpl) then) =
      __$$SetAlarmStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? bedtime,
      String? wakeupTime,
      SetAlarmStatus setAlarmStatus,
      List<Alarm>? alarms});
}

/// @nodoc
class __$$SetAlarmStateImplCopyWithImpl<$Res>
    extends _$SetAlarmStateCopyWithImpl<$Res, _$SetAlarmStateImpl>
    implements _$$SetAlarmStateImplCopyWith<$Res> {
  __$$SetAlarmStateImplCopyWithImpl(
      _$SetAlarmStateImpl _value, $Res Function(_$SetAlarmStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bedtime = freezed,
    Object? wakeupTime = freezed,
    Object? setAlarmStatus = null,
    Object? alarms = freezed,
  }) {
    return _then(_$SetAlarmStateImpl(
      bedtime: freezed == bedtime
          ? _value.bedtime
          : bedtime // ignore: cast_nullable_to_non_nullable
              as String?,
      wakeupTime: freezed == wakeupTime
          ? _value.wakeupTime
          : wakeupTime // ignore: cast_nullable_to_non_nullable
              as String?,
      setAlarmStatus: null == setAlarmStatus
          ? _value.setAlarmStatus
          : setAlarmStatus // ignore: cast_nullable_to_non_nullable
              as SetAlarmStatus,
      alarms: freezed == alarms
          ? _value._alarms
          : alarms // ignore: cast_nullable_to_non_nullable
              as List<Alarm>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SetAlarmStateImpl extends _SetAlarmState {
  _$SetAlarmStateImpl(
      {required this.bedtime,
      required this.wakeupTime,
      required this.setAlarmStatus,
      required final List<Alarm>? alarms})
      : _alarms = alarms,
        super._();

  factory _$SetAlarmStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$SetAlarmStateImplFromJson(json);

  @override
  final String? bedtime;
  @override
  final String? wakeupTime;
  @override
  final SetAlarmStatus setAlarmStatus;
  final List<Alarm>? _alarms;
  @override
  List<Alarm>? get alarms {
    final value = _alarms;
    if (value == null) return null;
    if (_alarms is EqualUnmodifiableListView) return _alarms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SetAlarmState(bedtime: $bedtime, wakeupTime: $wakeupTime, setAlarmStatus: $setAlarmStatus, alarms: $alarms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetAlarmStateImpl &&
            (identical(other.bedtime, bedtime) || other.bedtime == bedtime) &&
            (identical(other.wakeupTime, wakeupTime) ||
                other.wakeupTime == wakeupTime) &&
            (identical(other.setAlarmStatus, setAlarmStatus) ||
                other.setAlarmStatus == setAlarmStatus) &&
            const DeepCollectionEquality().equals(other._alarms, _alarms));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, bedtime, wakeupTime,
      setAlarmStatus, const DeepCollectionEquality().hash(_alarms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetAlarmStateImplCopyWith<_$SetAlarmStateImpl> get copyWith =>
      __$$SetAlarmStateImplCopyWithImpl<_$SetAlarmStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SetAlarmStateImplToJson(
      this,
    );
  }
}

abstract class _SetAlarmState extends SetAlarmState {
  factory _SetAlarmState(
      {required final String? bedtime,
      required final String? wakeupTime,
      required final SetAlarmStatus setAlarmStatus,
      required final List<Alarm>? alarms}) = _$SetAlarmStateImpl;
  _SetAlarmState._() : super._();

  factory _SetAlarmState.fromJson(Map<String, dynamic> json) =
      _$SetAlarmStateImpl.fromJson;

  @override
  String? get bedtime;
  @override
  String? get wakeupTime;
  @override
  SetAlarmStatus get setAlarmStatus;
  @override
  List<Alarm>? get alarms;
  @override
  @JsonKey(ignore: true)
  _$$SetAlarmStateImplCopyWith<_$SetAlarmStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
