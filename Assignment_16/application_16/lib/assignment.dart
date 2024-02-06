import 'package:flutter/material.dart';

class Assignment extends StatelessWidget {
  const Assignment({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Portfolio"),
      ),
      body: Column(
        children: [
          const Text("Name: Niranjan Yadav"),
          Container(
            child: Image.asset("assets/profile.jpg"),
          ),
          const Text("College: Zeal College of Engineering & Resaerch"),
          Container(
            child: Image.asset("assets/clg.jpg"),
          ),
          const Text("Dream Company: Microsoft"),
          Container(
            child: Image.asset("assets/comp.jpg"),
          ),
        ],
      ),
    );
  }
}
