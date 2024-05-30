part of 'set_alarm_bloc.dart';

enum SetAlarmStatus {
  initial,
  bedtimeSet,
  wakeUpSet,
  alarmAdded,
  alarmUpdated,
  alarmDeleted,
  alarmsFetched,
}

@freezed
class SetAlarmState with _$SetAlarmState {
  SetAlarmState._();

  factory SetAlarmState({
    required final String? bedtime,
    required final String? wakeupTime,
    required SetAlarmStatus setAlarmStatus,
    required List<Alarm>? alarms,
  }) = _SetAlarmState;

  factory SetAlarmState.initial() => SetAlarmState(
        bedtime: '',
        wakeupTime: '',
        setAlarmStatus: SetAlarmStatus.initial,
        alarms: [],
      );

  factory SetAlarmState.hydratedfromJson(Map<String, dynamic> data) {
    return SetAlarmState(
      bedtime: data['bedtime'],
      wakeupTime: data['wakeup_time'],
      setAlarmStatus: SetAlarmStatus.values.byName(
        data['set_alarm_status'],
      ),
      alarms: List<Alarm>.from(
        data['alarms']?.map((x) => Alarm.fromJson(x)) ?? [],
      ),
    );
  }

  Map<String, dynamic> hydratedToJson() => {
        'bedtime': bedtime,
        'wakeup_time': wakeupTime,
        'set_alarm_status': setAlarmStatus.name,
        'alarms': alarms,
      };

  factory SetAlarmState.fromJson(Map<String, dynamic> json) =>
      _$SetAlarmStateFromJson(json);
}
