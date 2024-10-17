import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDx7wffyU9yFyi1PISfiXzUi_RxJrzdjfk",
            authDomain: "blood-v2-5d0f5.firebaseapp.com",
            projectId: "blood-v2-5d0f5",
            storageBucket: "blood-v2-5d0f5.appspot.com",
            messagingSenderId: "448988046389",
            appId: "1:448988046389:web:70f586a992f2eb1aecfd7c"));
  } else {
    await Firebase.initializeApp();
  }
}
