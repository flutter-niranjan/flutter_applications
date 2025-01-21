import 'package:advquiz/SplashScreen.dart';
import 'package:advquiz/mathquiz.dart';
import 'package:advquiz/subjectpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MathQuiz(),
      debugShowCheckedModeBanner: false,
    );
  }
}
