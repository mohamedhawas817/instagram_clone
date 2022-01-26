import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import './utilies/colors.dart';
import './responsive/responsive_layout.dart';
import './responsive/mobile_screen_layout.dart';
import './responsive/web_screen_layout.dart';
import 'package:firebase_core/firebase_core.dart';
import './screens/login_screen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyCurW3qa9jEWRYJ1AQU4w3FQTmuXmi7E7g",
          appId: "1:548317276666:web:9d36e10c70c763d44a5c43",
          messagingSenderId: "548317276666",
          projectId: "instagram-2a4ba",
        storageBucket: "instagram-2a4ba.appspot.com"
      )
    );

  }else {
    await Firebase.initializeApp();
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Instgram",
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,

      ),
      // home: ResponseLayout(WebScreen(), MobileScreen())
      home: LoginScreen()
    );
  }
}
