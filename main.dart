import 'package:flutter/material.dart';
import 'Pages/landing.dart';

void main() {
  runApp(const MPOnlinePoliceApp());
}

class MPOnlinePoliceApp extends StatelessWidget {
  const MPOnlinePoliceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MP Online Police',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Landing(), // This is your PoliceHomePage from home.dart
    );
  }
}
