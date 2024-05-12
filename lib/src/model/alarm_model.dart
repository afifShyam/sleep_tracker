// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'alarm_model.freezed.dart';
part 'alarm_model.g.dart';

@freezed
class AlarmModel with _$AlarmModel {
  factory AlarmModel({
    required DateTime date,
    @JsonKey(name: 'start_time') required DateTime startTime,
    @JsonKey(name: 'end_time') required DateTime endTime,
    final String? note,
  }) = _AlarmModel;

  factory AlarmModel.initial() => AlarmModel(
        date: DateTime.now(),
        startTime: DateTime.now(),
        endTime: DateTime.now(),
        note: 'Need Rest',
      );

  factory AlarmModel.fromJson(Map<String, dynamic> json) =>
      _$AlarmModelFromJson(json);
}
