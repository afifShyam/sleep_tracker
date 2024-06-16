import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'alarm.freezed.dart';
part 'alarm.g.dart';

@freezed
class Alarm with _$Alarm {
  const Alarm._();
  const factory Alarm({
    String? id,
    @TimeOfDayConverter() required TimeOfDay bedtime,
    @TimeOfDayConverter() required TimeOfDay wakeupTime,
    required bool enabled,
    required Map<String, bool> days,
    @Default(false) bool isExpanded, // Added isExpanded field
  }) = _Alarm;

  Duration get sleepDuration {
    final bedtimeInMinutes = bedtime.hour * 60 + bedtime.minute;
    final wakeupTimeInMinutes = wakeupTime.hour * 60 + wakeupTime.minute;
    int durationInMinutes = wakeupTimeInMinutes - bedtimeInMinutes;
    if (durationInMinutes < 0) {
      durationInMinutes += 24 * 60; // Handle wrap around midnight
    }
    return Duration(minutes: durationInMinutes);
  }

  factory Alarm.fromJson(Map<String, dynamic> json) => _$AlarmFromJson(json);
}

class TimeOfDayConverter implements JsonConverter<TimeOfDay, String> {
  const TimeOfDayConverter();

  @override
  TimeOfDay fromJson(String json) {
    final parts = json.split(':');
    return TimeOfDay(hour: int.parse(parts[0]), minute: int.parse(parts[1]));
  }

  @override
  String toJson(TimeOfDay object) => '${object.hour}:${object.minute}';
}
