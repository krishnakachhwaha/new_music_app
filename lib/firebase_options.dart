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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDhmjyz41pT6qpBKQCZN6rMmqob1kKS4qY',
    appId: '1:504334605611:web:92d60da089b657ecdd396e',
    messagingSenderId: '504334605611',
    projectId: 'music-app-7234d',
    authDomain: 'music-app-7234d.firebaseapp.com',
    storageBucket: 'music-app-7234d.appspot.com',
    measurementId: 'G-WWDZ9XVNG2',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDZ3lfHrCEGeWLTPX2k_LZwPJfagtXnbys',
    appId: '1:504334605611:android:953ea7bca31af5cfdd396e',
    messagingSenderId: '504334605611',
    projectId: 'music-app-7234d',
    storageBucket: 'music-app-7234d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBFnF7eMD0neGH5Aur5FEbFQZdZz2vIGcI',
    appId: '1:504334605611:ios:21850a964ec09608dd396e',
    messagingSenderId: '504334605611',
    projectId: 'music-app-7234d',
    storageBucket: 'music-app-7234d.appspot.com',
    iosBundleId: 'com.example.musicApp',
  );
}
