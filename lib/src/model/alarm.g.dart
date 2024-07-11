// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlarmImpl _$$AlarmImplFromJson(Map<String, dynamic> json) => _$AlarmImpl(
      id: json['id'] as String?,
      bedtime: const TimeOfDayConverter().fromJson(json['bedtime'] as String),
      wakeupTime:
          const TimeOfDayConverter().fromJson(json['wakeupTime'] as String),
      sleepDate: DateTime.parse(json['sleepDate'] as String),
      wakeupDate: DateTime.parse(json['wakeupDate'] as String),
      enabled: json['enabled'] as bool,
      days: Map<String, bool>.from(json['days'] as Map),
      isExpanded: json['isExpanded'] as bool? ?? false,
    );

Map<String, dynamic> _$$AlarmImplToJson(_$AlarmImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bedtime': const TimeOfDayConverter().toJson(instance.bedtime),
      'wakeupTime': const TimeOfDayConverter().toJson(instance.wakeupTime),
      'sleepDate': instance.sleepDate.toIso8601String(),
      'wakeupDate': instance.wakeupDate.toIso8601String(),
      'enabled': instance.enabled,
      'days': instance.days,
      'isExpanded': instance.isExpanded,
    };
