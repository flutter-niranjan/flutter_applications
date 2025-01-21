import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EphemeralDemo(),
    );
  }
}

class EphemeralDemo extends StatefulWidget {
  const EphemeralDemo({super.key});
  @override
  State createState() => _EphemeralDemoState();
}

class _EphemeralDemoState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("SetState Management"),
        centerTitle: true,
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Course(courseName: "Java"),
          SizedBox(
            height: 50,
          ),
          Course(courseName: "Flutter"),
        ],
      ),
    );
  }
}

class Course extends StatefulWidget {
  final String courseName;
  const Course({super.key, required this.courseName});
  @override
  State createState() => _CourseState();
}

class _CourseState extends State<Course> {
  int referenceCount = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              referenceCount++;
            });
          },
          child: Container(
            alignment: Alignment.center,
            height: 70,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(widget.courseName),
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        Container(
          alignment: Alignment.center,
          height: 65,
          width: 80,
          decoration: BoxDecoration(
            color: Colors.purple.shade200,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text("Count:$referenceCount"),
        )
      ],
    );
  }
}
