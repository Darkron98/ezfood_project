import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyC2aD7TI9Xije1_fkotO-IIW22XE_DmxlM',
    appId: '1:527839607631:web:67d24a308ae5a291e9233a',
    messagingSenderId: '527839607631',
    projectId: 'appmovil-dcdb3',
    authDomain: 'appmovil-dcdb3.firebaseapp.com',
    storageBucket: 'appmovil-dcdb3.appspot.com',
    measurementId: 'G-XZ7MMP2KQ8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDmk_LaCwE-9XVyHZU1Y2iIZAs2h8bdB_Q',
    appId: '1:527839607631:android:3443643e896c1e26e9233a',
    messagingSenderId: '527839607631',
    projectId: 'appmovil-dcdb3',
    storageBucket: 'appmovil-dcdb3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB5sZIMqw0BjKPyiW5HOXpz3oZX0m1FCzs',
    appId: '1:527839607631:ios:dbaaf15398937126e9233a',
    messagingSenderId: '527839607631',
    projectId: 'appmovil-dcdb3',
    storageBucket: 'appmovil-dcdb3.appspot.com',
    iosClientId:
        '527839607631-3c83388rp9nua5bh737drs0oteia4pt9.apps.googleusercontent.com',
    iosBundleId: 'com.example.ezfoodApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB5sZIMqw0BjKPyiW5HOXpz3oZX0m1FCzs',
    appId: '1:527839607631:ios:dbaaf15398937126e9233a',
    messagingSenderId: '527839607631',
    projectId: 'appmovil-dcdb3',
    storageBucket: 'appmovil-dcdb3.appspot.com',
    iosClientId:
        '527839607631-3c83388rp9nua5bh737drs0oteia4pt9.apps.googleusercontent.com',
    iosBundleId: 'com.example.ezfoodApp',
  );
}
