import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC1xW_nQvPWCjNpcFN5Q1knwZstcTDGWE0",
            authDomain: "internalapp-56cde.firebaseapp.com",
            projectId: "internalapp-56cde",
            storageBucket: "internalapp-56cde.appspot.com",
            messagingSenderId: "904495355765",
            appId: "1:904495355765:web:c70c116bb9cfb51198653c",
            measurementId: "G-1NSL0P6442"));
  } else {
    await Firebase.initializeApp();
  }
}
