import 'dart:async';
import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
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

    FirestoreService(GetDataFireBase.currentUserId)
        .getAlarms()
        .first
        .then((onData) {
      context.read<SetAlarmBloc>().add(UpdateAllAlarms(onData));
    });
  }

  @override
  void dispose() {
    super.dispose();
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
      sleepDate: DateTime.now(),
      wakeupDate: DateTime.now().add(const Duration(days: 1)),
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
    final now = DateTime.now();

    final sleepDateTime = DateTime(
      alarm.sleepDate.year,
      alarm.sleepDate.month,
      alarm.sleepDate.day,
      alarm.bedtime.hour,
      alarm.bedtime.minute,
    );

    final wakeupDateTime = DateTime(
      alarm.wakeupDate.year,
      alarm.wakeupDate.month,
      alarm.wakeupDate.day,
      alarm.wakeupTime.hour,
      alarm.wakeupTime.minute,
    );

    log('Scheduling alarm for ${alarm.id}');
    log('Sleep DateTime: $sleepDateTime');
    log('Wakeup DateTime: $wakeupDateTime');

    if (sleepDateTime.isAfter(now)) {
      AlarmManager.triggerAlarm(
        alarm.id.hashCode,
        'Bedtime Alarm',
        'It\'s time to go to bed!',
        sleepDateTime,
        type: 'bedtime',
      );
    }

    if (wakeupDateTime.isAfter(now)) {
      AlarmManager.triggerAlarm(
        alarm.id.hashCode + 1,
        'Wakeup Alarm',
        'It\'s time to wake up!',
        wakeupDateTime,
        type: 'wakeup',
      );
    }
  }

  Future<void> _selectDateTime(
      BuildContext context, Alarm alarm, bool isBedtime) async {
    final DateTime currentDate = DateTime.now();
    final DateTime initialDate = isBedtime ? alarm.sleepDate : alarm.wakeupDate;
    final DateTime adjustedInitialDate =
        initialDate.isBefore(currentDate) ? currentDate : initialDate;

    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: adjustedInitialDate,
      firstDate: currentDate,
      lastDate: DateTime(2101),
    );

    if (pickedDate != null && context.mounted) {
      final TimeOfDay? pickedTime = await showTimePicker(
        context: context,
        initialTime: isBedtime ? alarm.bedtime : alarm.wakeupTime,
      );

      if (pickedTime != null) {
        final pickedDateTime = DateTime(
          pickedDate.year,
          pickedDate.month,
          pickedDate.day,
          pickedTime.hour,
          pickedTime.minute,
        );

        DateTime otherDateTime;
        if (isBedtime) {
          otherDateTime = DateTime(
            alarm.wakeupDate.year,
            alarm.wakeupDate.month,
            alarm.wakeupDate.day,
            alarm.wakeupTime.hour,
            alarm.wakeupTime.minute,
          );
        } else {
          otherDateTime = DateTime(
            alarm.sleepDate.year,
            alarm.sleepDate.month,
            alarm.sleepDate.day,
            alarm.bedtime.hour,
            alarm.bedtime.minute,
          );
        }

        if ((isBedtime && pickedDateTime.isBefore(otherDateTime)) ||
            (!isBedtime && pickedDateTime.isAfter(otherDateTime))) {
          final updatedAlarm = alarm.copyWith(
            sleepDate: isBedtime ? pickedDateTime : alarm.sleepDate,
            wakeupDate: isBedtime ? alarm.wakeupDate : pickedDateTime,
            bedtime: isBedtime ? pickedTime : alarm.bedtime,
            wakeupTime: isBedtime ? alarm.wakeupTime : pickedTime,
          );

          context.read<SetAlarmBloc>().add(UpdateAlarm(updatedAlarm));

          if (alarm.enabled) {
            _scheduleAlarms(updatedAlarm);
          }
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Wakeup time must be greater than bedtime.'),
            ),
          );
        }
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

  void _toggleEnabled(
    Alarm alarm,
    bool value,
  ) {
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
                        onSelectDateTime: (bool isBedtime) =>
                            _selectDateTime(context, alarm, isBedtime),
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
  final Function(bool) onSelectDateTime;
  final Function(String) onToggleDay;
  final Function(bool) onToggleEnabled;
  final VoidCallback onToggleExpansion;

  const AlarmCard({
    super.key,
    required this.alarm,
    required this.onDelete,
    required this.onSelectDateTime,
    required this.onToggleDay,
    required this.onToggleEnabled,
    required this.onToggleExpansion,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ListTile(
            onTap: onToggleExpansion,
            title: Text(
              '${DateFormat('EEEE').format(alarm.sleepDate)} ${alarm.bedtime.format(context)} - ${DateFormat('EEEE').format(alarm.wakeupDate)} ${alarm.wakeupTime.format(context)}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: onDelete,
                ),
                Switch(
                  value: alarm.enabled,
                  onChanged: onToggleEnabled,
                ),
                Icon(
                  alarm.isExpanded ? Icons.expand_less : Icons.expand_more,
                ),
              ],
            ),
          ),
          if (alarm.isExpanded)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Divider(),
                  ListTile(
                    title: const Text('Bedtime'),
                    subtitle: Text(
                      '${DateFormat('EEEE').format(alarm.sleepDate)} ${alarm.bedtime.format(context)}',
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.edit),
                      onPressed: () => onSelectDateTime(true),
                    ),
                  ),
                  ListTile(
                    title: const Text('Wakeup Time'),
                    subtitle: Text(
                      '${DateFormat('EEEE').format(alarm.wakeupDate)} ${alarm.wakeupTime.format(context)}',
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.edit),
                      onPressed: () => onSelectDateTime(false),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  const Text('Repeat'),
                  Wrap(
                    spacing: 4.0,
                    children: alarm.days.keys.map((day) {
                      return FilterChip(
                        label: Text(day),
                        selected: alarm.days[day]!,
                        onSelected: (selected) => onToggleDay(day),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
