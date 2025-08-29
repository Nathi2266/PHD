import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCUvYUysJ_G0X0AcCoDzmdl9xXMGWaL1UY",
            authDomain: "debugthugs-37266.firebaseapp.com",
            projectId: "debugthugs-37266",
            storageBucket: "debugthugs-37266.firebasestorage.app",
            messagingSenderId: "911385203944",
            appId: "1:911385203944:web:de5820d57319de6504655d",
            measurementId: "G-8FSWHBV042"));
  } else {
    await Firebase.initializeApp();
  }
}
