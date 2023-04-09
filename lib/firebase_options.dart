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
    apiKey: 'AIzaSyA0bYFGkjqvAE03jtrzQV_yTI1pMbGuyUw',
    appId: '1:510800930792:web:d4fd601bea48a78076665d',
    messagingSenderId: '510800930792',
    projectId: 'auth-97989',
    authDomain: 'auth-97989.firebaseapp.com',
    storageBucket: 'auth-97989.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCHM6aHs2mWi-5qSB0mwghDCWs_KGPcf00',
    appId: '1:510800930792:android:a41a1382207b8d7c76665d',
    messagingSenderId: '510800930792',
    projectId: 'auth-97989',
    storageBucket: 'auth-97989.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCgPBOp8fNrBbkmaYiJKnSD_mm59ruo1u8',
    appId: '1:510800930792:ios:05421ffb1ac5acfb76665d',
    messagingSenderId: '510800930792',
    projectId: 'auth-97989',
    storageBucket: 'auth-97989.appspot.com',
    iosClientId: '510800930792-g4tg538q8t48vfvgtdoknhg398ffmpoi.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCgPBOp8fNrBbkmaYiJKnSD_mm59ruo1u8',
    appId: '1:510800930792:ios:05421ffb1ac5acfb76665d',
    messagingSenderId: '510800930792',
    projectId: 'auth-97989',
    storageBucket: 'auth-97989.appspot.com',
    iosClientId: '510800930792-g4tg538q8t48vfvgtdoknhg398ffmpoi.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebase',
  );
}
