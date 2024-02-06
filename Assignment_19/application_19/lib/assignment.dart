import 'package:flutter/material.dart';

class Assignment extends StatefulWidget {
  const Assignment({super.key});

  @override
  State<Assignment> createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  bool Button1 = false;
  bool Button2 = false;
  bool Button3 = false;
  bool Button4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tech Quiz"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("Question:1/10")],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("Question1: What is Flutter")],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
                width: 300,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text("Option 1")),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
                width: 300,
                child: ElevatedButton(
                  onPressed: () {},
                  // style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.green)),
                  child: const Text("Option 2"),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
                width: 300,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text("Option 3")),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
                width: 300,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text("Option 4")),
              )
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.navigate_next_rounded),
      ),
    );
  }
}
