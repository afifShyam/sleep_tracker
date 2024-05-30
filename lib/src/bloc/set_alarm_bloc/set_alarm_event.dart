part of 'set_alarm_bloc.dart';

@freezed
class SetAlarmEvent with _$SetAlarmEvent {
  const factory SetAlarmEvent.setBedtime(String time) = SetBedtime;
  const factory SetAlarmEvent.setWakeUp(String time) = SetWakeUp;
  const factory SetAlarmEvent.removeWakeUp() = RemoveWakeUp;
  const factory SetAlarmEvent.removeBedtime() = RemoveBedtime;
  const factory SetAlarmEvent.addAlarm(Alarm alarm) = AddAlarm;
  const factory SetAlarmEvent.updateAlarm(Alarm alarm) = UpdateAlarm;
  const factory SetAlarmEvent.removeAlarm(Alarm alarm) = RemoveAlarm;
  const factory SetAlarmEvent.updateAllAlarms(List<Alarm> alarms) =
      UpdateAllAlarms;
}
