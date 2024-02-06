import 'package:flutter/material.dart';

class Problem9 extends StatelessWidget {
  const Problem9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 150,
          height: 150,
          color: Colors.red,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
          child: Container(
            width: 150,
            height: 150,
            color: Colors.blue,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
            margin: const EdgeInsets.all(5),
          ),
        ),
      ),
    );
  }
}
