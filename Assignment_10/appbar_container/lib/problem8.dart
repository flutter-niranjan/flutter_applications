import 'package:flutter/material.dart';

class Problem8 extends StatelessWidget {
  const Problem8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 150,
          height: 150,
          color: Colors.red,
          child: Container(
            width: 150,
            height: 150,
            color: Colors.blue,
            margin: const EdgeInsets.all(5),
          ),
        ),
      ),
    );
  }
}
