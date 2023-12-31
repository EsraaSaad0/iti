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
    apiKey: 'AIzaSyCRmKcX0qExSIvvu7-kHxGd6E9YHmVP2oE',
    appId: '1:539038075159:web:12a0d2992f46752e410f52',
    messagingSenderId: '539038075159',
    projectId: 'iti23tranning',
    authDomain: 'iti23tranning.firebaseapp.com',
    storageBucket: 'iti23tranning.appspot.com',
    measurementId: 'G-1DQPCTDPXL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCQdmWMVZRGzymMxt82Cg-jziqbV2ZjB60',
    appId: '1:539038075159:android:765f3be320ef22a3410f52',
    messagingSenderId: '539038075159',
    projectId: 'iti23tranning',
    storageBucket: 'iti23tranning.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDY_NNijrzVKDLbvdWutm8xgl_zpp7P3lg',
    appId: '1:539038075159:ios:1b4124b7bb0c7b47410f52',
    messagingSenderId: '539038075159',
    projectId: 'iti23tranning',
    storageBucket: 'iti23tranning.appspot.com',
    iosClientId: '539038075159-t2so9quo6divqitp0ds1jp040scbefne.apps.googleusercontent.com',
    iosBundleId: 'com.example.libararyy',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDY_NNijrzVKDLbvdWutm8xgl_zpp7P3lg',
    appId: '1:539038075159:ios:0213f50e08c7ec15410f52',
    messagingSenderId: '539038075159',
    projectId: 'iti23tranning',
    storageBucket: 'iti23tranning.appspot.com',
    iosClientId: '539038075159-s7qv6usduglbhemvts9b8b17tmp69akm.apps.googleusercontent.com',
    iosBundleId: 'com.example.libararyy.RunnerTests',
  );
}
