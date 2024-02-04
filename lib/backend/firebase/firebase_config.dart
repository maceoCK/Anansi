import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAp_RvwtIH_VpA7sdndIEeBLX5120GRGNo",
            authDomain: "network-spinner-yslhg7.firebaseapp.com",
            projectId: "network-spinner-yslhg7",
            storageBucket: "network-spinner-yslhg7.appspot.com",
            messagingSenderId: "198819212675",
            appId: "1:198819212675:web:9053a3624cd10792775ab6"));
  } else {
    await Firebase.initializeApp();
  }
}
