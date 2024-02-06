import 'package:flutter/material.dart';

class Problem4 extends StatelessWidget {
  const Problem4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: 360,
                  color: Colors.blue,
                ),
                Container(
                  height: 200,
                  width: 360,
                  color: Colors.orange,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
