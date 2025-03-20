import 'package:flutter/material.dart';
import 'package:nav_bar/nav_bar.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NavBar(),
      debugShowCheckedModeBanner: false, 
    );
  }
}
