import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sleep_tracker/src/index.dart';

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

  Stream<List<String>> getAlarmIds() {
    return _db
        .collection('users')
        .doc(userId)
        .collection('alarms')
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) => doc.id).toList();
    });
  }
}
