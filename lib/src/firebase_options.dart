import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
      apiKey: 'AIzaSyAyPaT6cyfgN9jnxGZ904pFdkgoEZTfZsg',
      appId: '1:876129254237:android:5a435ccf5d8c52b39b06b4',
      messagingSenderId: '876129254237',
      projectId: 'shop-e1292',
      storageBucket: 'shop-e1292.appspot.com');
}

//     apiKey: 'AIzaSyAyPaT6cyfgN9jnxGZ904pFdkgoEZTfZsg',
//     appId: '1:876129254237:android:5a435ccf5d8c52b39b06b4',
//     messagingSenderId: '876129254237',
//     projectId: 'shop-e1292',
//     storageBucket: 'shop-e1292.appspot.com'
