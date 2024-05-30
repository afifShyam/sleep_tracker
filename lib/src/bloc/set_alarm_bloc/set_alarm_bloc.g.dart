// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_alarm_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SetAlarmStateImpl _$$SetAlarmStateImplFromJson(Map<String, dynamic> json) =>
    _$SetAlarmStateImpl(
      bedtime: json['bedtime'] as String?,
      wakeupTime: json['wakeupTime'] as String?,
      setAlarmStatus:
          $enumDecode(_$SetAlarmStatusEnumMap, json['setAlarmStatus']),
      alarms: (json['alarms'] as List<dynamic>?)
          ?.map((e) => Alarm.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SetAlarmStateImplToJson(_$SetAlarmStateImpl instance) =>
    <String, dynamic>{
      'bedtime': instance.bedtime,
      'wakeupTime': instance.wakeupTime,
      'setAlarmStatus': _$SetAlarmStatusEnumMap[instance.setAlarmStatus]!,
      'alarms': instance.alarms,
    };

const _$SetAlarmStatusEnumMap = {
  SetAlarmStatus.initial: 'initial',
  SetAlarmStatus.bedtimeSet: 'bedtimeSet',
  SetAlarmStatus.wakeUpSet: 'wakeUpSet',
  SetAlarmStatus.alarmAdded: 'alarmAdded',
  SetAlarmStatus.alarmUpdated: 'alarmUpdated',
  SetAlarmStatus.alarmDeleted: 'alarmDeleted',
  SetAlarmStatus.alarmsFetched: 'alarmsFetched',
};
