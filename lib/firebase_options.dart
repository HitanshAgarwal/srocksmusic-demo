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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCTupy-mBxy6ZG9i8ZJCFbtlXCbiOoJsQc',
    appId: '1:425210840066:android:24d310bfe0b3e57794931b',
    messagingSenderId: '425210840066',
    projectId: 'srocksmusic-demo',
    storageBucket: 'srocksmusic-demo.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBvv6ylV3hKx2CKhgfYZr8Cg-TPbLWzgFo',
    appId: '1:425210840066:ios:6348989bbcce633894931b',
    messagingSenderId: '425210840066',
    projectId: 'srocksmusic-demo',
    storageBucket: 'srocksmusic-demo.firebasestorage.app',
    iosBundleId: 'com.example.srocksmusicDemo',
  );

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBPKjXBGgJyT0E79TDl6JFVevaixkvcH48',
    appId: '1:425210840066:web:34d696b3c095838f94931b',
    messagingSenderId: '425210840066',
    projectId: 'srocksmusic-demo',
    authDomain: 'srocksmusic-demo.firebaseapp.com',
    storageBucket: 'srocksmusic-demo.firebasestorage.app',
    measurementId: 'G-RXMBBNQ60M',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBvv6ylV3hKx2CKhgfYZr8Cg-TPbLWzgFo',
    appId: '1:425210840066:ios:6348989bbcce633894931b',
    messagingSenderId: '425210840066',
    projectId: 'srocksmusic-demo',
    storageBucket: 'srocksmusic-demo.firebasestorage.app',
    iosBundleId: 'com.example.srocksmusicDemo',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBPKjXBGgJyT0E79TDl6JFVevaixkvcH48',
    appId: '1:425210840066:web:03ca63b683dc072f94931b',
    messagingSenderId: '425210840066',
    projectId: 'srocksmusic-demo',
    authDomain: 'srocksmusic-demo.firebaseapp.com',
    storageBucket: 'srocksmusic-demo.firebasestorage.app',
    measurementId: 'G-FXD61CD0B9',
  );

}