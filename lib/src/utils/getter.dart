import 'package:firebase_auth/firebase_auth.dart';

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
