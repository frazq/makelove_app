import 'package:flutter/material.dart';

import 'package:makelove_app/pages/splash.dart';





// Entry point for the Flutter application. It runs the app by calling runApp with MyApp widget.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'LexendExa'),
      home: const SplashScreen()
    );
  }
}

