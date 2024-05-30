// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_times.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlarmTimesImpl _$$AlarmTimesImplFromJson(Map<String, dynamic> json) =>
    _$AlarmTimesImpl(
      day: json['day'] as String,
      bedtime: json['bedtime'] as String,
      wakeupTime: json['wakeup_time'] as String,
    );

Map<String, dynamic> _$$AlarmTimesImplToJson(_$AlarmTimesImpl instance) =>
    <String, dynamic>{
      'day': instance.day,
      'bedtime': instance.bedtime,
      'wakeup_time': instance.wakeupTime,
    };
