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
    apiKey: 'AIzaSyDtiUJNq3jOEhxrxYMsbDnnGKqLW-x0WB8',
    appId: '1:301712994692:android:d26b3f9d66b127ae03edd1',
    messagingSenderId: '301712994692',
    projectId: 'chatterapp-16a0c',
    storageBucket: 'chatterapp-16a0c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC8QwpHD088TtwgIZNug02EBHnCfR04g9A',
    appId: '1:301712994692:ios:87b5883da8ec840503edd1',
    messagingSenderId: '301712994692',
    projectId: 'chatterapp-16a0c',
    storageBucket: 'chatterapp-16a0c.appspot.com',
    androidClientId: '301712994692-oelbnnrbglurbc29e7n6k728sjajkngi.apps.googleusercontent.com',
    iosClientId: '301712994692-17b39ea70rtlj38qb3fh1on4646mdoeu.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatterApp',
  );
}
