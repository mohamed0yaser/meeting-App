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
    apiKey: 'AIzaSyBmGD3-ez8Cbfr0CVvBnR0hcMmytYsni30',
    appId: '1:428733370001:web:d08a447ba72b0dac417930',
    messagingSenderId: '428733370001',
    projectId: 'meeting-application173',
    authDomain: 'meeting-application173.firebaseapp.com',
    storageBucket: 'meeting-application173.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCQKgHm_--A6EAJ3-f7_PTI23Ela5SIIAI',
    appId: '1:428733370001:android:cc6bf76f4d9bee0c417930',
    messagingSenderId: '428733370001',
    projectId: 'meeting-application173',
    storageBucket: 'meeting-application173.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCjkkGDeTVMBziK1_2BJURMEP9hM5Qnl0w',
    appId: '1:428733370001:ios:a959ef349ad44f47417930',
    messagingSenderId: '428733370001',
    projectId: 'meeting-application173',
    storageBucket: 'meeting-application173.firebasestorage.app',
    iosClientId: '428733370001-qb47rmumnn4gtts69hs4c75tc1knd7fm.apps.googleusercontent.com',
    iosBundleId: 'com.example.meetingApplication',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCjkkGDeTVMBziK1_2BJURMEP9hM5Qnl0w',
    appId: '1:428733370001:ios:a959ef349ad44f47417930',
    messagingSenderId: '428733370001',
    projectId: 'meeting-application173',
    storageBucket: 'meeting-application173.firebasestorage.app',
    iosClientId: '428733370001-qb47rmumnn4gtts69hs4c75tc1knd7fm.apps.googleusercontent.com',
    iosBundleId: 'com.example.meetingApplication',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBmGD3-ez8Cbfr0CVvBnR0hcMmytYsni30',
    appId: '1:428733370001:web:3e589bc8596905ec417930',
    messagingSenderId: '428733370001',
    projectId: 'meeting-application173',
    authDomain: 'meeting-application173.firebaseapp.com',
    storageBucket: 'meeting-application173.firebasestorage.app',
  );
}
