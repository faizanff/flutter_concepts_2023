// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCeyFL_ttdnHlSj0tCsB_6tbaRhs9vZT8E',
    appId: '1:878688821628:web:82826092e48a43418a84f9',
    messagingSenderId: '878688821628',
    projectId: 'flutterloginapp-e793c',
    authDomain: 'flutterloginapp-e793c.firebaseapp.com',
    storageBucket: 'flutterloginapp-e793c.appspot.com',
    measurementId: 'G-ETM5EKYVWX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB_gy9DXR1a6-KVlhXd7KdCw6wsJaBuFhs',
    appId: '1:878688821628:android:0d1b42445032e7418a84f9',
    messagingSenderId: '878688821628',
    projectId: 'flutterloginapp-e793c',
    storageBucket: 'flutterloginapp-e793c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBw3OY2Z17QzClHQ3PS3zEVmuKbTFftV90',
    appId: '1:878688821628:ios:a5035adb2a1df0e48a84f9',
    messagingSenderId: '878688821628',
    projectId: 'flutterloginapp-e793c',
    storageBucket: 'flutterloginapp-e793c.appspot.com',
    androidClientId: '878688821628-arrv80bg809t0b8bidg6ptnkmip16vf0.apps.googleusercontent.com',
    iosClientId: '878688821628-ik2mjv38lne199sv44bmug61p54upp7i.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterCodes',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBw3OY2Z17QzClHQ3PS3zEVmuKbTFftV90',
    appId: '1:878688821628:ios:08afa421ce13a1188a84f9',
    messagingSenderId: '878688821628',
    projectId: 'flutterloginapp-e793c',
    storageBucket: 'flutterloginapp-e793c.appspot.com',
    androidClientId: '878688821628-arrv80bg809t0b8bidg6ptnkmip16vf0.apps.googleusercontent.com',
    iosClientId: '878688821628-3liov264a77kqe5nlmc6p6be6gc0nisf.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterCodes.RunnerTests',
  );
}
