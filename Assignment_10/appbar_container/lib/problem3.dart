import 'package:flutter/material.dart';

class Problem3 extends StatelessWidget {
  const Problem3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello Core2web"),
        backgroundColor: Colors.deepPurple,
      ),
      body: SizedBox(
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 200,
              width: 360,
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
