import 'package:flutter/material.dart';

class Assignment extends StatefulWidget {
  const Assignment({super.key});

  @override
  State createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  bool Box1Color = false;
  bool Box2Color = false;

  Color setBox1Color() {
    if (Box1Color == false) {
      return Colors.red;
    } else {
      return Colors.black;
    }
  }

  Color setBox2Color() {
    if (Box2Color == false) {
      return Colors.black;
    } else {
      return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Color Box"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                color: setBox1Color(),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (Box1Color == false) {
                        Box1Color = true;
                      } else {
                        Box1Color = false;
                      }
                    });
                  },
                  child: const Text("Button1")),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                color: setBox2Color(),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (Box2Color == false) {
                        Box2Color = true;
                      } else {
                        Box2Color = false;
                      }
                    });
                  },
                  child: const Text("Button2")),
            ],
          ),
        ],
      ),
    );
  }
}
