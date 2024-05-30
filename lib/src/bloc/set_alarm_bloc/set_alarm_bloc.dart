import 'dart:developer';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:sleep_tracker/src/index.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

part 'set_alarm_event.dart';
part 'set_alarm_state.dart';
part 'set_alarm_bloc.freezed.dart';
part 'set_alarm_bloc.g.dart';

class SetAlarmBloc extends HydratedBloc<SetAlarmEvent, SetAlarmState> {
  final FirestoreService _firestoreService;

  SetAlarmBloc(this._firestoreService) : super(SetAlarmState.initial()) {
    on<SetBedtime>(_setBedTime);
    on<SetWakeUp>(_setWakeUp);
    on<RemoveWakeUp>(_removeWakeUp);
    on<RemoveBedtime>(_removeBedtime);
    on<AddAlarm>(_addAlarm);
    on<UpdateAlarm>(_updateAlarm);
    on<RemoveAlarm>(_removeAlarm);

    _firestoreService.getAlarms().listen((alarms) {
      add(UpdateAllAlarms(alarms));
    });
  }

  void _setBedTime(SetBedtime event, Emitter emit) => emit(state.copyWith(
        bedtime: event.time,
        setAlarmStatus: SetAlarmStatus.bedtimeSet,
      ));

  void _setWakeUp(SetWakeUp event, Emitter emit) {
    final bedtime = int.tryParse(state.bedtime ?? '0') ?? 0;
    final wakeupTime = int.tryParse(event.time) ?? 0;

    if (wakeupTime > bedtime) {
      emit(state.copyWith(
        wakeupTime: event.time,
        setAlarmStatus: SetAlarmStatus.wakeUpSet,
      ));
    } else {
      emit(state.copyWith(
        setAlarmStatus: SetAlarmStatus.wakeUpSet,
      ));
    }
  }

  void _removeWakeUp(RemoveWakeUp event, Emitter emit) => emit(state.copyWith(
        wakeupTime: '',
        setAlarmStatus: SetAlarmStatus.initial,
      ));

  void _removeBedtime(RemoveBedtime event, Emitter emit) => emit(state.copyWith(
        bedtime: '',
        setAlarmStatus: SetAlarmStatus.initial,
      ));

  void _addAlarm(AddAlarm event, Emitter emit) async {
    final alarms = List<Alarm>.from(state.alarms ?? []);
    alarms.add(event.alarm);
    await _firestoreService.addAlarm(event.alarm);
    emit(state.copyWith(alarms: alarms));
  }

  void _updateAlarm(UpdateAlarm event, Emitter emit) async {
    final alarms = state.alarms!.map((alarm) {
      return alarm.id == event.alarm.id ? event.alarm : alarm;
    }).toList();
    await _firestoreService.updateAlarm(event.alarm.id!, event.alarm);
    emit(state.copyWith(alarms: alarms));
  }

  void _removeAlarm(RemoveAlarm event, Emitter emit) async {
    final alarms =
        state.alarms!.where((alarm) => alarm.id != event.alarm.id).toList();
    await _firestoreService.deleteAlarm(event.alarm.id ?? '');
    emit(state.copyWith(alarms: alarms));
  }

  @override
  SetAlarmState fromJson(Map<String, dynamic> json) =>
      SetAlarmState.hydratedfromJson(json);

  @override
  Map<String, dynamic> toJson(SetAlarmState state) => state.hydratedToJson();
}
