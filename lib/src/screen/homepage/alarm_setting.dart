import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sleep_tracker/src/index.dart';

class AlarmSettingsView extends StatefulWidget {
  const AlarmSettingsView({super.key});

  @override
  State<AlarmSettingsView> createState() => _AlarmSettingsViewState();
}

class _AlarmSettingsViewState extends State<AlarmSettingsView> {
  @override
  void initState() {
    super.initState();
    NotificationService.initialize();
    FirestoreService(GetDataFireBase.currentUserId).getAlarms();
  }

  void _addAlarm() {
    final newAlarmId = FirebaseFirestore.instance
        .collection('users')
        .doc(GetDataFireBase.currentUserId)
        .collection('alarms')
        .doc()
        .id;

    final newAlarm = Alarm(
      id: newAlarmId,
      bedtime: const TimeOfDay(hour: 22, minute: 0),
      wakeupTime: const TimeOfDay(hour: 6, minute: 0),
      enabled: false,
      days: {
        'Monday': false,
        'Tuesday': false,
        'Wednesday': false,
        'Thursday': false,
        'Friday': false,
        'Saturday': false,
        'Sunday': false,
      },
      isExpanded: false,
    );

    context.read<SetAlarmBloc>().add(AddAlarm(newAlarm));

    if (newAlarm.enabled) {
      _scheduleAlarms(newAlarm);
    }
  }

  void _scheduleAlarms(Alarm alarm) {
    for (var day in alarm.days.entries.where((entry) => entry.value)) {
      int dayOffset = _getDayOffset(day.key);
      final now = DateTime.now();
      final bedtime = DateTime(now.year, now.month, now.day + dayOffset,
          alarm.bedtime.hour, alarm.bedtime.minute);
      final wakeupTime = DateTime(now.year, now.month, now.day + dayOffset,
          alarm.wakeupTime.hour, alarm.wakeupTime.minute);

      log('Scheduling alarm for ${day.key}');
      log('Bedtime DateTime: ${bedtime.millisecondsSinceEpoch}');
      log('Wakeup Time: $wakeupTime');

      if (bedtime.isAfter(now)) {
        AlarmManager.triggerAlarm(
          alarm.id.hashCode,
          'Bedtime Alarm',
          'It\'s time to go to bed!',
          bedtime,
        );
      }

      if (wakeupTime.isAfter(now)) {
        AlarmManager.triggerAlarm(
          alarm.id.hashCode + 1,
          'Wakeup Alarm',
          'It\'s time to wake up!',
          wakeupTime,
        );
      }
    }
  }

  int _getDayOffset(String day) {
    final now = DateTime.now();
    final weekday = now.weekday;

    switch (day) {
      case 'Monday':
        return (1 - weekday + 7) % 7;
      case 'Tuesday':
        return (2 - weekday + 7) % 7;
      case 'Wednesday':
        return (3 - weekday + 7) % 7;
      case 'Thursday':
        return (4 - weekday + 7) % 7;
      case 'Friday':
        return (5 - weekday + 7) % 7;
      case 'Saturday':
        return (6 - weekday + 7) % 7;
      case 'Sunday':
        return (7 - weekday + 7) % 7;
      default:
        return 0;
    }
  }

  Future<void> _selectTime(
      BuildContext context, Alarm alarm, bool isBedtime) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: isBedtime ? alarm.bedtime : alarm.wakeupTime,
    );
    if (picked != null && context.mounted) {
      final updatedAlarm = alarm.copyWith(
        bedtime: isBedtime ? picked : alarm.bedtime,
        wakeupTime: isBedtime ? alarm.wakeupTime : picked,
      );
      context.read<SetAlarmBloc>().add(UpdateAlarm(updatedAlarm));

      if (alarm.enabled) {
        _scheduleAlarms(updatedAlarm);
      }
    }
  }

  void _toggleDay(Alarm alarm, String day) {
    final updatedDays = Map<String, bool>.from(alarm.days);
    updatedDays[day] = !updatedDays[day]!;
    final updatedAlarm = alarm.copyWith(days: updatedDays);
    context.read<SetAlarmBloc>().add(UpdateAlarm(updatedAlarm));

    if (alarm.enabled) {
      _scheduleAlarms(updatedAlarm);
    }
  }

  void _deleteAlarm(Alarm alarm) {
    context.read<SetAlarmBloc>().add(RemoveAlarm(alarm));
  }

  void _toggleExpansion(Alarm alarm) {
    final updatedAlarm = alarm.copyWith(isExpanded: !alarm.isExpanded);
    context.read<SetAlarmBloc>().add(UpdateAlarm(updatedAlarm));
  }

  void _toggleEnabled(Alarm alarm, bool value) {
    final updatedAlarm = alarm.copyWith(enabled: value);
    context.read<SetAlarmBloc>().add(UpdateAlarm(updatedAlarm));

    if (value) {
      _scheduleAlarms(updatedAlarm);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: STColor.darkBlueBackground,
      appBar: AppBar(
        title: const Text('Alarm Settings'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => HomepageStartPage.of(context).exit(context),
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(100, 0),
              backgroundColor: Theme.of(context).primaryColor,
            ),
            onPressed: _addAlarm,
            child: Text(
              'Add Alarm',
              style: TextStyleST.textStyle.interMedium.copyWith(
                color: STColor.white,
                fontSize: 10,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: BlocBuilder<SetAlarmBloc, SetAlarmState>(
                builder: (context, state) {
                  return ListView.builder(
                    itemCount: state.alarms?.length ?? 0,
                    itemBuilder: (context, index) {
                      final alarm = state.alarms![index];
                      return AlarmCard(
                        alarm: alarm,
                        onDelete: () => _deleteAlarm(alarm),
                        onSelectTime: (bool isBedtime) =>
                            _selectTime(context, alarm, isBedtime),
                        onToggleDay: (String day) => _toggleDay(alarm, day),
                        onToggleEnabled: (bool value) =>
                            _toggleEnabled(alarm, value),
                        onToggleExpansion: () => _toggleExpansion(alarm),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AlarmCard extends StatelessWidget {
  final Alarm alarm;
  final VoidCallback onDelete;
  final Function(bool) onSelectTime;
  final Function(String) onToggleDay;
  final Function(bool) onToggleEnabled;
  final VoidCallback onToggleExpansion;

  const AlarmCard({
    super.key,
    required this.alarm,
    required this.onDelete,
    required this.onSelectTime,
    required this.onToggleDay,
    required this.onToggleEnabled,
    required this.onToggleExpansion,
  });

  @override
  Widget build(BuildContext context) {
    final sleepDuration = alarm.sleepDuration;

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ListTile(
            onTap: onToggleExpansion,
            title: Text(
              '${alarm.bedtime.format(context)} - ${alarm.wakeupTime.format(context)}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'Sleep Duration: ${sleepDuration.inHours}h ${sleepDuration.inMinutes.remainder(60)}m',
              style: const TextStyle(color: Colors.grey),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.delete, color: Colors.red),
                  onPressed: onDelete,
                ),
                IconButton(
                  icon: Icon(
                      alarm.isExpanded ? Icons.expand_less : Icons.expand_more),
                  onPressed: onToggleExpansion,
                ),
              ],
            ),
          ),
          if (alarm.isExpanded) ...[
            ListTile(
              title: const Text('Bedtime'),
              trailing: Text(alarm.bedtime.format(context)),
              onTap: () => onSelectTime(true),
            ),
            ListTile(
              title: const Text('Wakeup Time'),
              trailing: Text(alarm.wakeupTime.format(context)),
              onTap: () => onSelectTime(false),
            ),
            SwitchListTile(
              title: const Text('Enable Alarm'),
              value: alarm.enabled,
              onChanged: onToggleEnabled,
            ),
            const Divider(),
            const Text('Days'),
            Column(
              children: alarm.days.keys.map((String key) {
                return CheckboxListTile(
                  title: Text(key),
                  value: alarm.days[key],
                  onChanged: (bool? value) {
                    onToggleDay(key);
                  },
                );
              }).toList(),
            ),
          ],
        ],
      ),
    );
  }
}
