import 'package:flutter/material.dart';
import './utilies/colors.dart';
import './responsive/responsive_layout.dart';
import './responsive/mobile_screen_layout.dart';
import './responsive/web_screen_layout.dart';


void main() {
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
      home: ResponseLayout(WebScreen(), MobileScreen())
    );
  }
}
