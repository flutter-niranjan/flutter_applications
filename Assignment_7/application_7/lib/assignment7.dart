import 'package:flutter/material.dart';
import 'dart:math';

class Assignment7 extends StatefulWidget {
  const Assignment7({super.key});

  @override
  State<Assignment7> createState() => _Assignment7State();
}

class _Assignment7State extends State<Assignment7> {
  final List<int> numbers = [121, 141, 151, 131, 126,1634,153];
  int count = 0;
  int? _count1 = 0;
  void palindromeNo() {
    setState(() {
      for (int i = 0; i < numbers.length; i++) {
        int? sum = 0;
        int? rem;
        int? temp;

        temp = numbers[i];
        int temp1 = numbers[i];
        while (temp != 0) {
          rem = temp! % 10;
          sum = (sum! * 10) + rem;
          temp = temp ~/ 10;
        }
        if (temp1 == sum) {
          count++;
        }
      }
    });
  }

  void armStrong() {
    setState(() {
      int? temp;

      for (int i = 0; i < numbers.length; i++) {
        int rem;
        num sum = 0;
        temp = numbers[i];
        int count = 0;

        int temp1 = numbers[i];
        while (temp != 0) {
          count++;
          temp = temp! ~/ 10;
        }
        //print(count);
        while (temp1 != 0) {
          rem = temp1 % 10;
          sum = sum + pow(rem, count);
          temp1 = temp1 ~/ 10;
        }
        if (sum == numbers[i]) {
          _count1 = _count1! + 1;
        }
      }
      //print(count1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("NUMBERS"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$count"),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: palindromeNo, child: const Text("Palindrome")),
            const SizedBox(
              height: 20,
            ),
            Text("$_count1"),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: armStrong, child: const Text("Armstrong")),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
