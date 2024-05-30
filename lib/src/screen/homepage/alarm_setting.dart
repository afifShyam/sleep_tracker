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
  void _addAlarm() {
    context.read<SetAlarmBloc>().add(AddAlarm(
          Alarm(
            id: FirebaseFirestore.instance
                .collection('users')
                .doc(GetDataFireBase.currentUserId)
                .collection('alarms')
                .doc()
                .id,
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
          ),
        ));
  }

  Future<void> _selectTime(
      BuildContext context, Alarm alarm, bool isBedtime, String id) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: isBedtime ? alarm.bedtime : alarm.wakeupTime,
    );
    if (picked != null) {
      context.read<SetAlarmBloc>().add(UpdateAlarm(alarm.copyWith(
            id: id,
            bedtime: isBedtime ? picked : alarm.bedtime,
            wakeupTime: isBedtime ? alarm.wakeupTime : picked,
          )));
    }
  }

  void _toggleDay(Alarm alarm, String day, String id) {
    final updatedDays = Map<String, bool>.from(alarm.days);
    updatedDays[day] = !updatedDays[day]!;
    context
        .read<SetAlarmBloc>()
        .add(UpdateAlarm(alarm.copyWith(id: id, days: updatedDays)));
  }

  void _deleteAlarm(Alarm alarm) {
    context.read<SetAlarmBloc>().add(RemoveAlarm(alarm));
  }

  void _toggleExpansion(Alarm alarm, String id) {
    context.read<SetAlarmBloc>().add(
        UpdateAlarm(alarm.copyWith(id: id, isExpanded: !alarm.isExpanded)));
  }

  void _toggleEnabled(Alarm alarm, bool value, String id) {
    context
        .read<SetAlarmBloc>()
        .add(UpdateAlarm(alarm.copyWith(id: id, enabled: value)));
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
                backgroundColor: Theme.of(context).primaryColor),
            onPressed: _addAlarm,
            child: Text(
              'Add Alarm',
              style: TextStyleST.textStyle.interMedium
                  .copyWith(color: STColor.white, fontSize: 10),
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
                        onSelectTime: (bool isBedtime) => _selectTime(
                            context, alarm, isBedtime, alarm.id ?? ''),
                        onToggleDay: (String day) =>
                            _toggleDay(alarm, day, alarm.id ?? ''),
                        onToggleEnabled: (bool value) =>
                            _toggleEnabled(alarm, value, alarm.id ?? ''),
                        onToggleExpansion: () =>
                            _toggleExpansion(alarm, alarm.id ?? ''),
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
    Key? key,
    required this.alarm,
    required this.onDelete,
    required this.onSelectTime,
    required this.onToggleDay,
    required this.onToggleEnabled,
    required this.onToggleExpansion,
  }) : super(key: key);

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
              '${alarm.bedtime.format(context)} - ${alarm.wakeupTime.format(context)}',
              style: const TextStyle(fontWeight: FontWeight.bold),
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
