import 'package:flutter/material.dart';

class Problem2 extends StatelessWidget {
  const Problem2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AppBar"),
        centerTitle: true,
        actions: const [
          Icon(Icons.access_alarm_outlined),
          Icon(Icons.message_outlined)
        ],
        backgroundColor: Colors.red,
      ),
    );
  }
}
