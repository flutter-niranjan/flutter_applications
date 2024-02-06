import 'package:flutter/material.dart';

class Assignment extends StatefulWidget {
  const Assignment({super.key});

  @override
  State<Assignment> createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  bool Box1Color = false;
  bool Box2Color = false;
  int? count1 = 0;
  int? count2 = 0;

  Color setBox1Color() {
    if (count1 == 0) {
      return Colors.red;
    } else if (count1 == 1) {
      return Colors.green;
    } else if (count1 == 2) {
      return Colors.blue;
    } else {
      count1 = 0;
      return Colors.red;
    }
  }

  Color setBox2Color() {
    if (count2 == 0) {
      return Colors.black;
    } else if (count2 == 1) {
      return Colors.orange;
    } else if (count2 == 2) {
      return Colors.purple;
    } else {
      count2 = 0;
      return Colors.black;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Color box"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: setBox1Color(),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      count1 = count1! + 1;
                    });
                  },
                  child: const Text("button1"))
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: setBox2Color(),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      count2 = count2! + 1;
                    });
                  },
                  child: const Text("button2"))
            ],
          ),
        ],
      ),
    );
  }
}
