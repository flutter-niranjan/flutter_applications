import 'package:flutter/material.dart';

class Problem1 extends StatelessWidget {
  const Problem1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AppBar"),
        actions: const [
          Icon(Icons.access_alarm_outlined),
          Icon(Icons.message_outlined)
        ],
        backgroundColor: Colors.red,
      ),
    );
  }
}
