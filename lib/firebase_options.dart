// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCSiq4BWOdxIiGg727Z6GkKJP-CdgzThj4',
    appId: '1:793896130228:android:7d5d31305de9a2f059a9e1',
    messagingSenderId: '793896130228',
    projectId: 'insomnia-project-e20be',
    databaseURL: 'https://insomnia-project-e20be-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'insomnia-project-e20be.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBPRF3pfSOKHZJEhvbkBOL17Y618c5d3Q0',
    appId: '1:793896130228:ios:122590dedf20868b59a9e1',
    messagingSenderId: '793896130228',
    projectId: 'insomnia-project-e20be',
    databaseURL: 'https://insomnia-project-e20be-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'insomnia-project-e20be.appspot.com',
    iosBundleId: 'com.example.sleepTracker',
  );
}