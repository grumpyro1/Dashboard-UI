import 'package:flutter/material.dart';
import 'package:flutter_application_2/const/constant.dart';
import 'package:flutter_application_2/pages/MainScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboard UI',
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColor, // constant.dart
        brightness: Brightness.dark,
      ),
      home: const Mainscreen(),
    );
  }
}