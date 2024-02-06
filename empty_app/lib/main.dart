import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        appBar: AppBar(
          title: const Text("Assignment 1"),
          backgroundColor: const Color.fromRGBO(255, 0, 0, 0.898),
        ),
        body: const Center(
          child: Text('Hello Core2Web'),
        ),
      ),
    );
  }
}
