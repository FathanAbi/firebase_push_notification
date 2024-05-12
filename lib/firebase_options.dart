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
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDxM6YfYjnt0gRrjhy82uJIXA_IEKQDfwk',
    appId: '1:791122176514:web:1c4ae4eb8f16c7a707d51b',
    messagingSenderId: '791122176514',
    projectId: 'fir-push-notification-be',
    authDomain: 'fir-push-notification-be.firebaseapp.com',
    storageBucket: 'fir-push-notification-be.appspot.com',
    measurementId: 'G-231X7CRLZC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBe1NdFjeGlcmTTDg1dqgfwFNJZLgJMeEQ',
    appId: '1:791122176514:android:5f277c6fc9c0458007d51b',
    messagingSenderId: '791122176514',
    projectId: 'fir-push-notification-be',
    storageBucket: 'fir-push-notification-be.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB1tYjU1eoHtt4WjxyiDZfHYJq5fT9b0pI',
    appId: '1:791122176514:ios:e89896fd39ee681607d51b',
    messagingSenderId: '791122176514',
    projectId: 'fir-push-notification-be',
    storageBucket: 'fir-push-notification-be.appspot.com',
    iosBundleId: 'com.example.firebasePushNotification',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB1tYjU1eoHtt4WjxyiDZfHYJq5fT9b0pI',
    appId: '1:791122176514:ios:e89896fd39ee681607d51b',
    messagingSenderId: '791122176514',
    projectId: 'fir-push-notification-be',
    storageBucket: 'fir-push-notification-be.appspot.com',
    iosBundleId: 'com.example.firebasePushNotification',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDxM6YfYjnt0gRrjhy82uJIXA_IEKQDfwk',
    appId: '1:791122176514:web:a3a5ee0ef8a0bd0607d51b',
    messagingSenderId: '791122176514',
    projectId: 'fir-push-notification-be',
    authDomain: 'fir-push-notification-be.firebaseapp.com',
    storageBucket: 'fir-push-notification-be.appspot.com',
    measurementId: 'G-N8CQW2NYJB',
  );
}
