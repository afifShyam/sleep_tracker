import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
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

  Future<List<QuestionModel>> getQuestions() async {
    final questionsSnapshot = await _db.collection('question').get();
    final questions = <QuestionModel>[];

    for (final questionDoc in questionsSnapshot.docs) {
      final questionId = questionDoc.id;
      final data = questionDoc.data();
      final text = data['questions'] as String;

      // Fetch the answers and solutions
      final options = <String>[];
      final solutions = <String>[];

      for (var option in ['a', 'b', 'c', 'd']) {
        final answerDoc = await _db
            .collection('question')
            .doc(questionId)
            .collection('answer_$option')
            .doc(option)
            .get();
        final answerData = answerDoc.data();
        options.add(answerData!['answer_$option'] as String);
        solutions.add(answerData['solution'] as String);
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
      onDidReceiveNotificationResponse: onDidReceiveNotificationResponse,
    );

    tz.initializeTimeZones();
  }

  // Handle notification tap
  static Future<void> onDidReceiveNotificationResponse(
      NotificationResponse notificationResponse) async {
    final payload = notificationResponse.payload;
    // Handle the notification tap here, e.g., navigate to a specific screen
  }

  static Future<void> showNotification(
    int id,
    String title,
    String body,
    DateTime date,
  ) async {
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

    await flutterLocalNotificationsPlugin.zonedSchedule(
      id,
      title,
      body,
      tz.TZDateTime.from(date, tz.local),
      platformChannelSpecifics,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
    );
  }
}

class AlarmManager {
  static void triggerAlarm(
      int id, String title, String body, DateTime dateTime) {
    NotificationService.showNotification(id, title, body, dateTime);
  }
}
