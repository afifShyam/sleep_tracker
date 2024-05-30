// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'alarm_times.freezed.dart';
part 'alarm_times.g.dart';

@freezed
class AlarmTimes with _$AlarmTimes {
  factory AlarmTimes({
    required final String day,
    required final String bedtime,
    @JsonKey(name: 'wakeup_time') required final String wakeupTime,
  }) = _AlarmTimes;

  factory AlarmTimes.initial() => AlarmTimes(
        day: '',
        bedtime: '',
        wakeupTime: '',
      );

  factory AlarmTimes.fromJson(Map<String, dynamic> json) =>
      _$AlarmTimesFromJson(json);
}
