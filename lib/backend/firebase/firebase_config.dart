import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCPBqccaVD5QVSG-aQDVEnBcg9scxeYUik",
            authDomain: "todo-ehjze4.firebaseapp.com",
            projectId: "todo-ehjze4",
            storageBucket: "todo-ehjze4.appspot.com",
            messagingSenderId: "393504343122",
            appId: "1:393504343122:web:e25bb4f860e0a266368b8b"));
  } else {
    await Firebase.initializeApp();
  }
}
