import 'dart:convert';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:intl/intl.dart';
import 'package:sleep_tracker/src/index.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;

class GetDataFireBase {
  // Private constructor to prevent instantiation from outside the class
  GetDataFireBase._internal();

  // Singleton instance
  static final GetDataFireBase _instance = GetDataFireBase._internal();

  // Factory constructor to return the singleton instance
  factory GetDataFireBase() {
    return _instance;
  }

  static final firebaseAuth = FirebaseAuth.instance;

  static User get currentUser => firebaseAuth.currentUser!;
  static String get currentUserId => firebaseAuth.currentUser!.uid;
}

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final String userId;

  FirestoreService(this.userId);

  // Add a new alarm
  Future<void> addAlarm(Alarm alarm) async {
    await _db
        .collection('users')
        .doc(userId)
        .collection('alarms')
        .doc(alarm.id)
        .set(alarm.toJson());
  }

  // Update an existing alarm
  Future<void> updateAlarm(String alarmId, Alarm alarm) async {
    await _db
        .collection('users')
        .doc(userId)
        .collection('alarms')
        .doc(alarmId)
        .update(alarm.toJson());
  }

  // Delete an alarm
  Future<void> deleteAlarm(String alarmId) async {
    await _db
        .collection('users')
        .doc(userId)
        .collection('alarms')
        .doc(alarmId)
        .delete();
  }

  // Fetch all alarms
  Stream<List<Alarm>> getAlarms() {
    return _db
        .collection('users')
        .doc(userId)
        .collection('alarms')
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) {
        return Alarm.fromJson(doc.data()).copyWith(id: doc.id);
      }).toList();
    });
  }
}

class QuestionFirestore {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<List<QuestionModel>> getQuestions(String categoryId) async {
    final questionsSnapshot = await _db
        .collection('categories')
        .doc(categoryId)
        .collection('questions')
        .get();
    final questions = <QuestionModel>[];

    for (final questionDoc in questionsSnapshot.docs) {
      final questionId = questionDoc.id;
      final data = questionDoc.data();
      final text = data['questionText'] as String;

      final options = <String>[];
      final solutions = <String>[];

      for (var option in ['A', 'B', 'C', 'D']) {
        options.add(data['answers'][option]);
        solutions.add(data['solutions'][option]);
      }

      questions.add(QuestionModel(
        id: questionId,
        question: text,
        answerType: options,
        solutions: solutions,
      ));
    }

    return questions;
  }

  Future<List<String>> fetchCategoryIds() async {
    try {
      QuerySnapshot querySnapshot = await _db.collection('categories').get();
      List<String> documentIds =
          querySnapshot.docs.map((doc) => doc.id).toList();

      return documentIds;
    } catch (e) {
      throw Exception('Failed to fetch category IDs: $e');
    }
  }
}

class NotificationService {
  static final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  static Future<void> initialize() async {
    // Android settings
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    // iOS settings using DarwinInitializationSettings
    const DarwinInitializationSettings initializationSettingsIOS =
        DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );

    // Request permissions for Android
    flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.requestExactAlarmsPermission();

    // Request permissions for iOS
    flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            IOSFlutterLocalNotificationsPlugin>()
        ?.requestPermissions(
          alert: true,
          badge: true,
          sound: true,
        );

    const InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
    );

    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (x) async {
        final id = x.payload ?? '';
        final map = jsonDecode(id);

        log('action buttong: ${map}');

        if (map['type'] == 'bedtime') {
          final now = DateTime.now();
          await FirebaseFirestore.instance
              .collection('users')
              .doc(GetDataFireBase.currentUserId)
              .collection('sleep_data')
              .doc(DateFormat('dd-MM-yyyy').format(DateTime.parse(map['date'])))
              .set({
            'bedtime': now,
            'wakeup': '',
            'timestamp': FieldValue.serverTimestamp(),
          }, SetOptions(merge: true));
        } else {
          final now = DateTime.now();
          await FirebaseFirestore.instance
              .collection('users')
              .doc(GetDataFireBase.currentUserId)
              .collection('sleep_data')
              .doc(DateFormat('dd-MM-yyyy').format(DateTime.parse(map['date'])))
              .update({
            // 'bedtime': now,
            'wakeup': now,
            // 'timestamp': FieldValue.serverTimestamp(),
          });
          // SetOptions(merge: true));
        }
      },
    );

    tz.initializeTimeZones();
  }

  static Future<void> showNotification(
      int id, String title, String body, DateTime date, String? type) async {
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
      'alarm_channel_id',
      'Alarm Notifications',
      channelDescription: 'Notifications for alarms',
      importance: Importance.max,
      priority: Priority.max,
      enableLights: true,
      category: AndroidNotificationCategory.alarm,
      audioAttributesUsage: AudioAttributesUsage.alarm,
      sound: RawResourceAndroidNotificationSound('alarm_sound'),
      actions: [
        AndroidNotificationAction('snooze', 'Snooze',
            inputs: [AndroidNotificationActionInput()])
      ],
    );

    const DarwinNotificationDetails iosPlatformChannelSpecifics =
        DarwinNotificationDetails(
      presentAlert: true,
      presentSound: true,
      interruptionLevel: InterruptionLevel.critical,
      sound: 'alarm_sound.mp3',
    );

    const NotificationDetails platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
      iOS: iosPlatformChannelSpecifics,
    );

    await flutterLocalNotificationsPlugin.zonedSchedule(id, title, body,
        tz.TZDateTime.from(date, tz.local), platformChannelSpecifics,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime,
        // androidScheduleMode: AndroidScheduleMode.alarmClock,
        matchDateTimeComponents: DateTimeComponents.dayOfWeekAndTime,
        payload:
            '{"id":"$id","title":"$title","body":"$body", "date":"$date", "type":"$type"}');

    //Example of JsonEncode
    // {"id":"d","title":"titlell","body":"mantap"}
  }
}

class AlarmManager {
  static void triggerAlarm(int id, String title, String body, DateTime dateTime,
      {String? type}) {
    NotificationService.showNotification(id, title, body, dateTime, type);
  }
}
