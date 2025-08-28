import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCT43snBa-EkxYcrm-3LCCP1bNUp-Luvt4",
            authDomain: "debug-thugs-ed2f6.firebaseapp.com",
            projectId: "debug-thugs-ed2f6",
            storageBucket: "debug-thugs-ed2f6.firebasestorage.app",
            messagingSenderId: "880879891614",
            appId: "1:880879891614:web:eec57bd382a2774362b78f",
            measurementId: "G-E9R25D3X1P"));
  } else {
    await Firebase.initializeApp();
  }
}
